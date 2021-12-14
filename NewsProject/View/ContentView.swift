//
//  ContentView.swift
//  NewsProject
//
//  Created by ihlas on 14.12.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View{
        NavigationView{
            List(networkManager.posts) {post in
                HStack{
                    NavigationLink(destination: DetailView(url: post.url)) {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        onAppear{
            self.networkManager.fetchData()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*let posts = [
 Post(id: "1", title: "Hello"),
 Post(id: "2", title: "Selam"),
 Post(id: "3", title: "Merhaba")
 ]*/
