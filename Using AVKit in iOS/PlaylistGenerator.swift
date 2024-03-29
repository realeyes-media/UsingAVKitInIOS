//
//  PlaylistGenerator.swift
//  Using AVKit in iOS
//
//  Created by John Gainfort on 11/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

let mediaPlaylistVideoDict: [String: String] = [
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/350k_cmaf/350k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9" : mediaPlaylistVideo350k,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/860k_cmaf/860k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9" : mediaPlaylistVideo860k,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/1850k_cmaf/1850k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9" : mediaPlaylistVideo1850k,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/3000k_cmaf/3000k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9" : mediaPlaylistVideo3000k,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/4830k_cmaf/4830k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9" : mediaPlaylistVideo4830k
]

let mediaPlaylistAudioDict: [String: String] = [
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_surround/layer_surround_cmaf-0.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9": mediaPlaylistAudioSurround,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_stereo/layer_stereo_cmaf-1.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9" : mediaPlaylistAudioStereo
]

func generatePlaylist(fromData data: Data, url: String, isMaster: Bool, isAudio: Bool) -> Data {
    if isMaster {
        return masterPlaylist.data(using: .utf8) ?? data
    }

    return isAudio ? mediaPlaylistAudioDict[url]?.data(using: .utf8) ?? data : mediaPlaylistVideoDict[url]?.data(using: .utf8) ?? data
}
