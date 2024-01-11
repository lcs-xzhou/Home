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
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
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
                    ZStack {
                        BoxStruct(Text1: "Garage", Text2: "Door", Text3: "Closed", color: .black)
                    }
                    ZStack {
                        BoxStruct(Text1: "Hallway", Text2: "Nest", Text3: "Heat to 12.0", color: .white)
                    }
                }
                HStack {
                    ZStack {
                        Rectangle()
                        BoxStruct(Text1: "Living Room", Text2: "Front Door", Text3: "Locked", color: .black)
                    }
                    ZStack {
                        BoxStruct(Text1: "Basement", Text2: "Side Door", Text3: "Locked", color: .black)
                    }
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
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Image(systemName: "waveform")
                    .foregroundColor(.white)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                Image(systemName: "ellipsis.circle")
                    .foregroundColor(.white)
            }
        }
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
    .preferredColorScheme(.dark)
}
