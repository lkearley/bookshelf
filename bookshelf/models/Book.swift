//
//  Book.swift
//  bookshelf
//
//  Created by Lauren Kearley on 7/14/20.
//  Copyright © 2020 ltk. All rights reserved.
//

import Foundation

struct Book : Codable, Identifiable {
    var volumeInfo: VolumeInfo?
    var id: String?
    
}

struct VolumeInfo : Codable {
    var title: String?
    var authors: [String?]
    var author: String?
    var imageLinks: [String?]
}

let testData = [Book(volumeInfo: VolumeInfo(title: "My Book", authors: ["Lauren Kearley", "Beau Martin"], author: "Lauren Kearley", imageLinks: []), id: "123"), Book(volumeInfo: VolumeInfo(title: "Orchids Book", authors: ["Fuzz Man", "Beau Martin"], author: "Fuzz", imageLinks: []), id: "1234")]
