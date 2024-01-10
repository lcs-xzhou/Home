//
//  ContentView.swift
//  HomeApp
//
//  Created by Fiona ZHOU on 2024-01-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            VStack {
                HStack {
                    Text("My Home")
                    Spacer()
                }
                HStack {
                    Rectangle()
                    Rectangle()
                    Rectangle()
                }
            }
            VStack {
                HStack {
                    Text("Favorites")
                    Spacer()
                }
                HStack {
                    Rectangle()
                    Rectangle()
                }
                HStack {
                    Rectangle()
                    Rectangle()
                }
            }
            VStack {
                HStack {
                    Text("Basement")
                    Spacer()
                }
                HStack {
                    Rectangle()
                    Rectangle()
                }
                HStack {
                    Rectangle()
                    VStack {
                        Rectangle()
                        Rectangle()
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    TabView(selection: Binding.constant(3))  {
        
        ContentView()
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
        
        Text("Automation") 
            .tabItem {
                Image(systemName: "deskclock.fill")
                Text("Automation")
            }
        
        
        Text("Discover")
            .tabItem {
                Image(systemName: "star.fill")
                Text("Discover")
            }
    }
    .accentColor(.white)
}
