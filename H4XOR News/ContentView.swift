//
//  ContentView.swift
//  H4XOR News
//
//  Created by TheGIZzz on 29/5/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4XOR News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [Post(id: "1", title: "Hello"),
             Post(id: "2", title: "Hello"),
             Post(id: "3", title: "Hello")]
                
