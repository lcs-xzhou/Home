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
    ContentView()
}
