//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Oleg Tsarenkoff on 5.08.21.
//

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            
            
        }
    }
}
