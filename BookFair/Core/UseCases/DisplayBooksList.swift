//
//  DisplayBookList.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

typealias DisplayBooksUseCaseCompletionHandler = (_ books: Result<[Book]>) -> Void

protocol DisplayBooksUseCase {
    func displayBooks(completionHandler: @escaping DisplayBooksUseCaseCompletionHandler)
}

class DisplayBooksListUseCaseImplementation: DisplayBooksUseCase {
    
    let booksGateway: BooksGateway
    
    init(booksGateway: BooksGateway) {
        self.booksGateway = booksGateway
    }
    
    func displayBooks(completionHandler: @escaping DisplayBooksUseCaseCompletionHandler) {
        self.booksGateway.fetchBooks { result in
            completionHandler(result)
        }
    }
}
