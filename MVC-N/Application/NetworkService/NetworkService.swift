//
//  NetworkService.swift
//  MVC-N
//
//  Created by Oleg Tsarenkoff on 5.08.21.
//

import Foundation

class NetworkService {
    private init() {}
    
    static let shared = NetworkService()
    
    public func getData(completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments")!) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
            } catch {
                print(error)
            }
        }.resume()
    }
}
