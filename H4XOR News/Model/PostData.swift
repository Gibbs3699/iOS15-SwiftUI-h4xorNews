//
//  PostData.swift
//  H4XOR News
//
//  Created by TheGIZzz on 29/5/2565 BE.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
