//
//  SZAVPlayerConfig.swift
//  SZAVPlayer
//
//  Created by CaiSanze on 2020/1/6.
//

import AppKit
import AVKit

public struct SZAVPlayerConfig {

    public var urlStr: String           // The URL value for playing.
    public var uniqueID: String?        // The uniqueID to identify wether they are the same audio. If set to nil will use urlStr to create one.
    public var isVideo: Bool            // Is video or not.
    public var isVideoOutputEnabled: Bool           // Output video image function enabled or not.
    public var timeObserverInterval: Float64 = 1    // TimeObserver interval, default value is 1s.
    public var isLocalURL: Bool = false
    public var videoGravity: AVLayerVideoGravity = .resizeAspect

    public init(urlStr: String, uniqueID: String?, isVideo: Bool = false, isVideoOutputEnabled: Bool = false) {
        self.urlStr = urlStr
        self.uniqueID = uniqueID
        self.isVideo = isVideo
        self.isVideoOutputEnabled = isVideoOutputEnabled
    }

    public static var `default`: SZAVPlayerConfig {
        return SZAVPlayerConfig(urlStr: "fakeURL.com", uniqueID: nil)
    }

}
