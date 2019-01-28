//
//  CoreDataBook.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation
import CoreData

// It's best to decouple the application / business logic from your persistence framework
// That's why CoreDataBook - which is a NSManagedObjectModel subclass is converted into a Book entity
extension CoreDataBook {
    var book: Book {
        return Book(id: id ?? "",
                    isbn: isbn ?? "",
                    title: title ?? "",
                    author: author ?? "",
                    releaseDate: releaseDate as Date?,
                    pages: Int(pages))
    }
    
    func populate(with parameters: AddBookParameters) {
        // Normally this id should be used at some point during the sync with the API backend
        id = NSUUID().uuidString
        
        isbn = parameters.isbn
        title = parameters.title
        author = parameters.author
        pages = Int32(parameters.pages)
        releaseDate = parameters.releaseDate
    }
    
    func populate(with book: Book) {
        id = book.id
        isbn = book.isbn
        title = book.title
        author = book.author
        pages = Int32(book.pages)
        releaseDate = book.releaseDate
    }
}
