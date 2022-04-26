//
//  ProfileView.swift
//  TwitterSwiftUI
//
//  Created by Андрей Василевский on 4/25/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
        
    var body: some View {
        VStack(alignment: .leading) {
            
            headerView
            
            actionButtons
           
            description
            
            tweetFilterBar
            
            tweetsView
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle()
                .foregroundColor(Color(.systemBlue))
                .ignoresSafeArea()
            
            Circle()
                .frame(width: 75, height: 75)
                .offset(x: 14.0, y: 24)
        }
        .frame(height: 100)
    }
    
    var actionButtons: some View {
        HStack(spacing: 10) {
            Spacer()
            Image(systemName: "bell.badge")
                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke().foregroundColor(.gray))
            
            Button(action: {}, label: {
                Text("Edit Profile")
                    .font(.footnote).bold()
                    .frame(width: 130, height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).stroke().foregroundColor(.gray))
                
            })
            .foregroundColor(.black)
        }
        .padding(.trailing)
    }
    
    var description: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 12) {
                Text("Heath Ledger")
                    .font(.title2).bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
            }
            
            Text("@joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Your moms favourite villain")
                .padding(.top)
            
            HStack(spacing: 30) {
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gotham, NY")
                        .font(.footnote)
                }
                .foregroundColor(.gray)
                
                
                HStack{
                    Image(systemName: "link")
                    Text("www.thejocker.com")
                        .font(.footnote)
                }
                .foregroundColor(.gray)
            }
            
            HStack(spacing: 30) {
                HStack{
                    Text("911")
                        .fontWeight(.bold)
                    Text("followers")
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                
                HStack{
                    Text("5.6M")
                        .fontWeight(.bold)
                    Text("following")
                        .font(.callout)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
    }
    
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(.blue)
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 9, id: \.self) { _ in
                    OneTweetView()
                }
            }
        }
    }
}
