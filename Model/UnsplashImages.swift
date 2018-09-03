//
//  UnsplashImages.swift
//  App_AppstoreClone
//
//  Created by mac on 2018. 8. 30..
//  Copyright © 2018년 UkJin. All rights reserved.
//

import Foundation


typealias Photos = [Photo]

struct Photo: Codable {
    let id: String
    let urls: URLS
}

struct URLS: Codable {
    let raw: URL
    let full: URL
    let regular: URL
    let small: URL
    let thumb: URL
}



