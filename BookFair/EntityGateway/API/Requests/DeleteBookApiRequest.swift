//
//  DeleteBookApiRequest.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

// Dummy implementation. The endpoint doesn't exist.
struct DeleteBookApiRequest: ApiRequest {
    let bookId: String
    
    var urlRequest: URLRequest {
        let url: URL! = URL(string: "https://api.library.fortech.ro/books/\(bookId)")
        var request = URLRequest(url: url)
        
        request.httpMethod = "DELETE"
        
        return request
    }
}
