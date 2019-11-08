//
//  PlaylistGenerator.swift
//  Using AVKit in iOS
//
//  Created by John Gainfort on 11/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

let mediaPlaylistVideoDict: [String: String] = [
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/350k_cmaf/350k_cmaf.m3u8" : mediaPlaylistVideo350k,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/860k_cmaf/860k_cmaf.m3u8" : mediaPlaylistVideo860k,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/1850k_cmaf/1850k_cmaf.m3u8" : mediaPlaylistVideo1850k,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/3000k_cmaf/3000k_cmaf.m3u8" : mediaPlaylistVideo3000k,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/4830k_cmaf/4830k_cmaf.m3u8" : mediaPlaylistVideo4830k
]

let mediaPlaylistAudioDict: [String: String] = [
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_surround/layer_surround_cmaf-0.m3u8": mediaPlaylistAudioSurround,
"https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_stereo/layer_stereo_cmaf-1.m3u8" : mediaPlaylistAudioStereo
]

func generatePlaylist(fromData data: Data, url: String, isMaster: Bool, isAudio: Bool) -> Data {
    if isMaster {
        return masterPlaylist.data(using: .utf8) ?? data
    }

    return isAudio ? mediaPlaylistAudioDict[url]?.data(using: .utf8) ?? data : mediaPlaylistVideoDict[url]?.data(using: .utf8) ?? data
}
