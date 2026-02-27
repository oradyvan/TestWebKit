//
//  ContentView.swift
//  TestWebKit
//
//  Created by Oleksiy Radyvanyuk on 27/02/2026.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://rgkp.nl")!)
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // No updates needed for this simple implementation
    }
}

#Preview {
    ContentView()
}
