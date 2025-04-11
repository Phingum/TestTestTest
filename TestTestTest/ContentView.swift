//
//  ContentView.swift
//  MyPantryApp
//
//  Created by Kenneth B. Jørgensen on 08/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //bottom navigation menu
        TabView {
            MyPantryView()
                .tabItem {
                    Image(systemName: "birthday.cake.fill")
                    Text("My Pantry")
                }
            ShoppingListView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.portrait.fill")
                    Text("Shopping List")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                
        }
        //sets the color of the bottom menu buttons
        .accentColor(.red)
        //sets the background color of the bottom menu
        .onAppear {
            UITabBar.appearance().backgroundColor = .systemGray6
        }
        
    }
}

#Preview {
    ContentView()
}
