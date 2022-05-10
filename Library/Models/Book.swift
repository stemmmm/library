//
//  Book.swift
//  Library
//
//  Created by 정호윤 on 2022/05/10.
//

import Foundation

struct Book: Identifiable, Decodable {
    var title: String
    var author: String
    var image: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var id: Int
    var content: [String]
}
