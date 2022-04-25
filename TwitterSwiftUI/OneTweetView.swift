//
//  OneTweetView.swift
//  TwitterSwiftUI
//
//  Created by Андрей Василевский on 4/25/22.
//

import SwiftUI

struct OneTweetView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Bruce Waine")
                            .font(.headline)
                        Text("@batman")
                            .font(.callout)
                            .foregroundColor(Color(.systemGray))
                        Text("48w")
                            .font(.callout)
                            .foregroundColor(Color(.systemGray))
                    }
                    Text("I believe in Harvey Dent")
                        .font(.callout)
                }
                
            }.padding()
            
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "heart")
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                })
            }.padding()
            .foregroundColor(.gray)
            
        }
    }
}

struct OneTweetView_Previews: PreviewProvider {
    static var previews: some View {
        OneTweetView()
    }
}
