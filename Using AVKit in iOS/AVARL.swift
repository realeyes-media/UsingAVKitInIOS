//
//  AVARL.swift
//  Using AVKit in iOS
//
//  Created by John Gainfort on 11/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import AVFoundation

class AVARL: NSObject, AVAssetResourceLoaderDelegate {

    enum AVARLError: Error {
        case ServerError
    }

    private var completedMasterRequest = false
    private var activeRequests: [String: URLSessionTask] = [:]

    func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool {
        guard let url = URL(string: loadingRequest.request.url?.absoluteString.replacingOccurrences(of: "rehttp", with: "http") ?? "") else {
            return false
        }

        print("url: \(url.absoluteString)")
        loadRequestedResource(withUrl: url, loadingRequest: loadingRequest)

        return true
    }

    func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest) {
        let url = loadingRequest.request.url?.absoluteString
        activeRequests.removeValue(forKey: url ?? "")
    }

    private func loadRequestedResource(withUrl url: URL, loadingRequest: AVAssetResourceLoadingRequest) {
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            let responseUrl = response?.url?.absoluteString ?? ""
            self?.activeRequests.removeValue(forKey: responseUrl)

            if let error = error {
                self?.handleError(error, loadingRequest: loadingRequest, response: response)
                return
            }

            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode), let data = data else {
                self?.handleError(AVARLError.ServerError, loadingRequest: loadingRequest, response: response)
                return
            }


            if let _ = loadingRequest.dataRequest {
                let isAudio = responseUrl.contains("stereo") || responseUrl.contains("surround")
                let isSub = responseUrl.contains("subtitles")
                let isWebVtt = responseUrl.contains(".webvtt")
                let isMediaPlaylist = self?.completedMasterRequest ?? false
                self?.completedMasterRequest = true

                print("isMaster: \(!isMediaPlaylist)")
                print("isAudio: \(isAudio)")
                let playlistData = generatePlaylist(fromData: data, url: url.absoluteString, isMaster: !isMediaPlaylist, isAudio: isAudio, isSub: isSub, isWebVtt: isWebVtt)
                print("playlistData: \(String(data: playlistData, encoding: .utf8) ?? "something is wrong")")
                loadingRequest.dataRequest?.respond(with: playlistData)
            }

            loadingRequest.response = response
            loadingRequest.finishLoading()
        }

        task.resume()
        activeRequests.updateValue(task, forKey: url.absoluteString)
    }

    private func handleError(_ error: Error, loadingRequest: AVAssetResourceLoadingRequest, response: URLResponse?) {
        loadingRequest.response = response
        loadingRequest.finishLoading(with: error)
    }

}
