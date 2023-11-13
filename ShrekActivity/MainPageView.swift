//
//  MainPageView.swift
//  ShrekActivity
//
//  Created by Nick Gordon on 11/13/23.
//

import SwiftUI

struct MainPageView: View {
    var body: some View {
        
        TabView{
            //Text("Tab one information goes here")
            ShrekView()
                .tabItem {
                    Label("To-Do", systemImage: "list.bullet.circle")
                        
                     }
               
        
                
            Text("Tab2 information goes here")
                .tabItem {
                         Label("Dear Diary", systemImage: "book.closed.fill")
                        
                     }
            
            
        }
    }
}

#Preview {
    MainPageView()
}
