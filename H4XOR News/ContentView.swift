//
//  ContentView.swift
//  H4XOR News
//
//  Created by TheGIZzz on 29/5/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            List(networkManager.posts) { post in
                Text(String(post.points))
                Text(post.title)
            }
            .navigationBarTitle("H4XOR News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [Post(id: "1", title: "Hello"),
//             Post(id: "2", title: "Hello"),
//             Post(id: "3", title: "Hello")]
                
