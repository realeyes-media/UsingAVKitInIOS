//
//  Playlists.swift
//  Using AVKit in iOS
//
//  Created by John Gainfort on 11/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

let masterPlaylist = """
#EXTM3U
#EXT-X-VERSION:6
#EXT-X-INDEPENDENT-SEGMENTS

#EXT-X-MEDIA:TYPE=SUBTITLES,GROUP-ID="subs",NAME="english",AUTOSELECT=YES,FORCED=NO,LANGUAGE="en",URI="rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/master_cmaf.subtitles.0.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"

#EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="eac3",NAME="Surround English",LANGUAGE="en",AUTOSELECT=YES,DEFAULT=YES,URI="rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_surround/layer_surround_cmaf-0.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"

#EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="aac_stereo",NAME="Stereo English",LANGUAGE="en",AUTOSELECT=YES,DEFAULT=YES,URI="rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_stereo/layer_stereo_cmaf-1.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"

#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=2243000,AVERAGE-BANDWIDTH=1999000,RESOLUTION=896x504,SUBTITLES="subs",CODECS="avc1.4d401f,ec-3",AUDIO="eac3"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/1850k_cmaf/1850k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=5393000,AVERAGE-BANDWIDTH=4910000,RESOLUTION=1280x720,SUBTITLES="subs",CODECS="avc1.64001f,ec-3",AUDIO="eac3"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/4830k_cmaf/4830k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=3437000,AVERAGE-BANDWIDTH=3124000,RESOLUTION=1024x576,SUBTITLES="subs",CODECS="avc1.64001f,ec-3",AUDIO="eac3"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/3000k_cmaf/3000k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=1145000,AVERAGE-BANDWIDTH=1035000,RESOLUTION=640x360,SUBTITLES="subs",CODECS="avc1.4d401e,ec-3",AUDIO="eac3"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/860k_cmaf/860k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=583000,AVERAGE-BANDWIDTH=538000,RESOLUTION=512x288,SUBTITLES="subs",CODECS="avc1.4d4015,ec-3",AUDIO="eac3"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/350k_cmaf/350k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9

#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=2156000,AVERAGE-BANDWIDTH=1904000,RESOLUTION=896x504,SUBTITLES="subs",CODECS="avc1.4d401f,mp4a.40.2",AUDIO="aac_stereo"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/1850k_cmaf/1850k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=5306000,AVERAGE-BANDWIDTH=4815000,RESOLUTION=1280x720,SUBTITLES="subs",CODECS="avc1.64001f,mp4a.40.2",AUDIO="aac_stereo"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/4830k_cmaf/4830k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=3350000,AVERAGE-BANDWIDTH=3029000,RESOLUTION=1024x576,SUBTITLES="subs",CODECS="avc1.64001f,mp4a.40.2",AUDIO="aac_stereo"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/3000k_cmaf/3000k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=1058000,AVERAGE-BANDWIDTH=940000,RESOLUTION=640x360,SUBTITLES="subs",CODECS="avc1.4d401e,mp4a.40.2",AUDIO="aac_stereo"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/860k_cmaf/860k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-STREAM-INF:FRAME-RATE=23.976,BANDWIDTH=497000,AVERAGE-BANDWIDTH=443000,RESOLUTION=512x288,SUBTITLES="subs",CODECS="avc1.4d4015,mp4a.40.2",AUDIO="aac_stereo"
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/350k_cmaf/350k_cmaf.m3u8?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
"""

let mediaPlaylistVideo350k = """
#EXTM3U
#EXT-X-TARGETDURATION:6
#EXT-X-VERSION:6
#EXT-X-MEDIA-SEQUENCE:0
#EXT-X-PLAYLIST-TYPE:VOD
#EXT-X-INDEPENDENT-SEGMENTS
#EXT-X-DATERANGE:ID="splice--1",START-DATE="2019-11-04T19:55:23Z",X-COM-REMEDIA-AD-ID="-1",PLANNED-DURATION=15.0,X-COM-REMEDIA-SCTE35-OUT=0
#EXT-X-MAP:URI="http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-6-init.mp4"

#EXT-X-DISCONTINUITY

#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-6_00001.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-6_00002.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:3.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-6_00003.mp4
#EXT-X-DATERANGE:ID="splice--1",DURATION=0.0,X-COM-REMEDIA-AD-ID="-1",X-COM-REMEDIA-SCTE35-IN=15.0

#EXT-X-DISCONTINUITY

#EXT-X-MAP:URI="https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/350k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-5-init.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/350k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-5_00001.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/350k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-5_00002.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/350k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-5_00003.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-ENDLIST
"""

let mediaPlaylistVideo860k = """
#EXTM3U
#EXT-X-TARGETDURATION:6
#EXT-X-VERSION:6
#EXT-X-MEDIA-SEQUENCE:0
#EXT-X-PLAYLIST-TYPE:VOD
#EXT-X-INDEPENDENT-SEGMENTS
#EXT-X-DATERANGE:ID="splice--1",START-DATE="2019-11-04T19:55:23Z",X-COM-REMEDIA-AD-ID="-1",PLANNED-DURATION=15.0,X-COM-REMEDIA-SCTE35-OUT=0
#EXT-X-MAP:URI="http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-5-init.mp4"

#EXT-X-DISCONTINUITY

#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-5_00001.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-5_00002.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:3.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-5_00003.mp4
#EXT-X-DATERANGE:ID="splice--1",DURATION=0.0,X-COM-REMEDIA-AD-ID="-1",X-COM-REMEDIA-SCTE35-IN=15.0

#EXT-X-DISCONTINUITY

#EXT-X-MAP:URI="https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/860k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-4-init.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/860k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-4_00001.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/860k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-4_00002.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/860k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-4_00003.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-ENDLIST
"""

let mediaPlaylistVideo1850k = """
#EXTM3U
#EXT-X-TARGETDURATION:6
#EXT-X-VERSION:6
#EXT-X-MEDIA-SEQUENCE:0
#EXT-X-PLAYLIST-TYPE:VOD
#EXT-X-INDEPENDENT-SEGMENTS
#EXT-X-DATERANGE:ID="splice--1",START-DATE="2019-11-04T19:55:23Z",X-COM-REMEDIA-AD-ID="-1",PLANNED-DURATION=15.0,X-COM-REMEDIA-SCTE35-OUT=0
#EXT-X-MAP:URI="http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-4-init.mp4"

#EXT-X-DISCONTINUITY

#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-4_00001.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-4_00002.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:3.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-4_00003.mp4
#EXT-X-DATERANGE:ID="splice--1",DURATION=0.0,X-COM-REMEDIA-AD-ID="-1",X-COM-REMEDIA-SCTE35-IN=15.0

#EXT-X-DISCONTINUITY

#EXT-X-MAP:URI="https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/1850k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-0-init.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/1850k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-0_00001.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/1850k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-0_00002.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/1850k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-0_00003.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-ENDLIST
"""

let mediaPlaylistVideo3000k = """
#EXTM3U
#EXT-X-TARGETDURATION:6
#EXT-X-VERSION:6
#EXT-X-MEDIA-SEQUENCE:0
#EXT-X-PLAYLIST-TYPE:VOD
#EXT-X-INDEPENDENT-SEGMENTS
#EXT-X-DATERANGE:ID="splice--1",START-DATE="2019-11-04T19:55:23Z",X-COM-REMEDIA-AD-ID="-1",PLANNED-DURATION=15.0,X-COM-REMEDIA-SCTE35-OUT=0
#EXT-X-MAP:URI="http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-4-init.mp4"

#EXT-X-DISCONTINUITY

#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-4_00001.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-4_00002.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:3.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-4_00003.mp4
#EXT-X-DATERANGE:ID="splice--1",DURATION=0.0,X-COM-REMEDIA-AD-ID="-1",X-COM-REMEDIA-SCTE35-IN=15.0

#EXT-X-DISCONTINUITY

#EXT-X-MAP:URI="https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/3000k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-3-init.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/3000k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-3_00001.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/3000k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-3_00002.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/3000k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-3_00003.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-ENDLIST
"""

let mediaPlaylistVideo4830k = """
#EXTM3U
#EXT-X-TARGETDURATION:6
#EXT-X-VERSION:6
#EXT-X-MEDIA-SEQUENCE:0
#EXT-X-PLAYLIST-TYPE:VOD
#EXT-X-INDEPENDENT-SEGMENTS
#EXT-X-DATERANGE:ID="splice--1",START-DATE="2019-11-04T19:55:23Z",X-COM-REMEDIA-AD-ID="-1",PLANNED-DURATION=15.0,X-COM-REMEDIA-SCTE35-OUT=0
#EXT-X-MAP:URI="http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-6-init.mp4"

#EXT-X-DISCONTINUITY

#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-6_00001.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-6_00002.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:3.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-6_00003.mp4
#EXT-X-DATERANGE:ID="splice--1",DURATION=0.0,X-COM-REMEDIA-AD-ID="-1",X-COM-REMEDIA-SCTE35-IN=15.0

#EXT-X-DISCONTINUITY

#EXT-X-MAP:URI="https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/4830k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-2-init.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/4830k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-2_00001.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/4830k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-2_00002.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:6.0060,frame-rate=24000/1001
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/4830k_cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-2_00003.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-ENDLIST
"""

let mediaPlaylistAudioSurround = """
#EXTM3U
#EXT-X-TARGETDURATION:6
#EXT-X-VERSION:6
#EXT-X-MEDIA-SEQUENCE:0
#EXT-X-PLAYLIST-TYPE:VOD
#EXT-X-INDEPENDENT-SEGMENTS
#EXT-X-DATERANGE:ID="splice--1",START-DATE="2019-11-04T19:55:23Z",X-COM-REMEDIA-AD-ID="-1",PLANNED-DURATION=15.0,X-COM-REMEDIA-SCTE35-OUT=0
#EXT-X-MAP:URI="http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-9-init.mp4"

#EXT-X-DISCONTINUITY

#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-9_00001.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-9_00002.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:3.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-9_00003.mp4
#EXT-X-DATERANGE:ID="splice--1",DURATION=0.0,X-COM-REMEDIA-AD-ID="-1",X-COM-REMEDIA-SCTE35-IN=15.0

#EXT-X-DISCONTINUITY

#EXT-X-MAP:URI="https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_surround/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-7-0-init.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"
#EXT-X-SCTE35:TYPE=0x01,UPID="0x0e:0x50434b5f313537323938393333313335375f3031",BLACKOUT=MAYBE,CUE="/DA7AAAAAAAAAP/wBQb+AAAAAAAlAiNDVUVJAAAAAH+/DhRQQ0tfMTU3Mjk4OTMzMTM1N18wMQEAAFMVUFE=",ID="1"
#EXTINF:5.9832,
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_surround/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-7-0_00001.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:5.9832,
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_surround/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-7-0_00002.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:5.9832,
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_surround/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-7-0_00003.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-ENDLIST
"""

let mediaPlaylistAudioStereo = """
#EXTM3U
#EXT-X-TARGETDURATION:6
#EXT-X-VERSION:6
#EXT-X-MEDIA-SEQUENCE:0
#EXT-X-PLAYLIST-TYPE:VOD
#EXT-X-INDEPENDENT-SEGMENTS
#EXT-X-DATERANGE:ID="splice--1",START-DATE="2019-11-04T19:55:23Z",X-COM-REMEDIA-AD-ID="-1",PLANNED-DURATION=15.0,X-COM-REMEDIA-SCTE35-OUT=0
#EXT-X-MAP:URI="http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-9-init.mp4"

#EXT-X-DISCONTINUITY

#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-9_00001.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:6.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-9_00002.mp4
#EXT-X-KEY:METHOD=NONE
#EXTINF:3.0
http://m1.fwmrm.net/m/1/171224/31/4655519/DYTV2324000H_ENT_MEZZ_HULU_1444258_568/DYTV2324000H_ENT_MEZZ_HULU_1444258_568-9_00003.mp4
#EXT-X-DATERANGE:ID="splice--1",DURATION=0.0,X-COM-REMEDIA-AD-ID="-1",X-COM-REMEDIA-SCTE35-IN=15.0

#EXT-X-DISCONTINUITY

#EXT-X-MAP:URI="https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_stereo/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-8-1-init.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9"
#EXT-X-SCTE35:TYPE=0x01,UPID="0x0e:0x50434b5f313537323938393333313335375f3031",BLACKOUT=MAYBE,CUE="/DA7AAAAAAAAAP/wBQb+AAAAAAAlAiNDVUVJAAAAAH+/DhRQQ0tfMTU3Mjk4OTMzMTM1N18wMQEAAFMVUFE=",ID="1"
#EXTINF:5.9907,
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_stereo/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-8-1_00001.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:5.9907,
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_stereo/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-8-1_00002.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXTINF:5.9907,
https://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/layer_stereo/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786-8-1_00003.mp4?e=1573260512&p=46&cd=1573224512&cf=1573224512&h=58e1b2b28bdd1c46042b7ea38d47a7d9
#EXT-X-ENDLIST
"""

let subtitlePlaylist = """
#EXTM3U
#EXT-X-TARGETDURATION:9999999
#EXT-X-VERSION:3
#EXT-X-MEDIA-SEQUENCE:0
#EXT-X-PLAYLIST-TYPE:VOD
#EXTINF:2576,
rehttps://llnw-stg.vod.peacocktv.com/pub/usterr/212/221/GMO_00000000002656_01/cmaf/CHICAGOPD_G4216_T27087_OAR_ENG_51_ENG_20_771184786.subtitles.0.split.0.webvtt
#EXT-X-ENDLIST
"""

let webvtt = """
WEBVTT
X-TIMESTAMP-MAP=MPEGTS:2002,LOCAL:00:00:00.000

00:00:20.630 --> 00:00:21.673
I just don't tolerate
in-house romance.

00:00:23.425 --> 00:00:24.843
You don't get to tell me who
I can and can't hang out with

00:00:24.884 --> 00:00:26.344
on my personal time.

00:00:26.386 --> 00:00:28.513
I'm not really the
sneak-around-behind-Dad's-back

00:00:28.555 --> 00:00:29.514
kind of guy.

00:00:29.556 --> 00:00:30.141
Says the guy that works
undercover.

00:00:31.182 --> 00:00:32.559
Let's just come clean.
"""
