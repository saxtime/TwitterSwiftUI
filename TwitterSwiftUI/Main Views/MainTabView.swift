//
//  Tab View.swift
//  TwitterSwiftUI
//
//  Created by Андрей Василевский on 4/25/22.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            ExploringView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Notifications()
                .tabItem {
                    Image(systemName: "bell")
                }
            
            Messages()
                .tabItem {
                    Image(systemName: "envelope")
                }
        }
    }
}

struct Tab_View_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
    

