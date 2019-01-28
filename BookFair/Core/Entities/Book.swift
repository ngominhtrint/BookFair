//
//  Book.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

struct Book {
    var id: String
    var isbn: String
    var title: String
    var author: String
    var releaseDate: Date?
    var pages: Int
    
    var durationToReadInHours: Double {
        return Double(pages) / 30.0
    }
}

extension Book: Equatable { }

func == (lhs: Book, rhs: Book) -> Bool {
    return lhs.id == rhs.id
}
