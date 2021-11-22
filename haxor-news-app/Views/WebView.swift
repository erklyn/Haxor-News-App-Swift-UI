//
//  WebView.swift
//  haxor-news-app
//
//  Created by Utku enes Gürsel on 22.11.2021.
//

import SwiftUI
import WebKit


struct WebView : UIViewRepresentable{
    
    let urlString: String?
    typealias UIViewType = WKWebView
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url:  url)
                uiView.load(request)
            }
        }
    }
    
    
}
