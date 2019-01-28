//
//  AddBook.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

typealias AddBookUseCaseCompletionHandler = (_ book: Result<Book>) -> Void

protocol AddBookUseCase {
    
    func add(parameters: AddBookParameters, completionHandler: @escaping AddBookUseCaseCompletionHandler)
}

struct AddBookParameters {
    
    var isbn: String
    var title: String
    var author: String
    var releaseDate: String?
    var pages: Int
}

class AddBookUseCaseImplementation: AddBookUseCase {
    
    let booksGateway: BooksGateway
    
    init(booksGateway: BooksGateway) {
        self.booksGateway = booksGateway
    }
    
    func add(parameters: AddBookParameters, completionHandler: @escaping AddBookUseCaseCompletionHandler) {
        self.booksGateway.add(parameters: parameters) { result in
            completionHandler(result)
        }
    }
}
