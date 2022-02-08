//
//  ContentView.swift
//  Shared
//
//  Created by Alexandre Lordelo on 2022-02-03.
//
import SwiftUI

@available(OSX 11.0, *)

struct ContentView: View {
    
  func bundleURL(fileName: String, fileExtension: String) -> URL {
    if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension, subdirectory: "www") {
      return fileURL
    } else {
      print("File not found")
      return URL(string: "")!
    }
  }
  
  init() {
    print("Hello World")
  }

  var body: some View {
    WebView(data: WebViewData(url: self.bundleURL(fileName: "index", fileExtension: "html")))
  }
}
