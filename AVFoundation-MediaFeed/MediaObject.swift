//
//  MediaObject.swift
//  AVFoundation-MediaFeed
//
//  Created by Margiett Gil on 4/14/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import Foundation

//mediaObject instance can either be a video or a image
struct MediaObject {
    let imageData: Data?
    let videoURL: String?
    let caption: String? // UI so user can enter text
    
    // everytime we are creating a custom object make sure it has an id and a date . 
    let id = UUID().uuidString
    let createDate = Data()
}
