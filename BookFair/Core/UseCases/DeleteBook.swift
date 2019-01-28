//
//  DeleteBook.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

typealias DeleteBookUseCaseCompletionHandler = (_ books: Result<Void>) -> Void

struct DeleteBookUseCaseNotifications {
    static let didDeleteBook = Notification.Name("didDeleteBookNotification")
}

protocol DeleteBookUseCase {
    
    func delete(book: Book, completionHandler: @escaping DeleteBookUseCaseCompletionHandler)
}

class DeleteBookUseCaseImplementation: DeleteBookUseCase {
    
    let booksGateway: BooksGateway
    
    init(booksGateway: BooksGateway) {
        self.booksGateway = booksGateway
    }
    
    func delete(book: Book, completionHandler: @escaping DeleteBookUseCaseCompletionHandler) {
        self.booksGateway.delete(book: book) { result in
            switch result {
            case .success():
                NotificationCenter.default.post(name: DeleteBookUseCaseNotifications.didDeleteBook, object: book)
                completionHandler(result)
            case .failure(_):
                completionHandler(result)
            }
        }
    }
}
