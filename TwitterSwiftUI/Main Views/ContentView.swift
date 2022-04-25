//
//  ContentView.swift
//  TwitterSwiftUI
//
//  Created by Андрей Василевский on 4/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0...10, id: \.self) { _ in
                    OneTweetView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
