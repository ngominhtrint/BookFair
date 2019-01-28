//
//  BooksGateway.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

typealias FetchBooksEntityGatewayCompletionHandler = (_ books: Result<[Book]>) -> Void
typealias AddBookEntityGatewayCompletionHandler = (_ book: Result<Book>) -> Void
typealias DeleteBookEntityGatewayCompletionHandler = (_ book: Result<Void>) -> Void

protocol BooksGateway {
    
    func fetchBooks(completionHandler: @escaping FetchBooksEntityGatewayCompletionHandler)
    func add(parameters: AddBookParameters, completionHandler: @escaping AddBookEntityGatewayCompletionHandler)
    func delete(book: Book, completionHandler: @escaping DeleteBookEntityGatewayCompletionHandler)
}
