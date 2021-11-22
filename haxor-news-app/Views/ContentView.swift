//
//  ContentView.swift
//  haxor-news-app
//
//  Created by Utku enes Gürsel on 22.11.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text("\(post.title)")
                    }
                }
                
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {self.networkManager.fetchData()})
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


