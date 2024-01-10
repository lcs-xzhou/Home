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
                    ZStack {
                        Rectangle()
                            .tint(.white)
                        HStack {
                            Image(systemName: "door.garage.closed")
                            BoxStruct(Text1: "Garage", Text2: "Door", Text3: "Closed")
                        }
                    }
                    ZStack {
                        Rectangle()
                            .tint(.white)
                        HStack {
                            Text("17.5")
                            BoxStruct(Text1: "Hallway", Text2: "Nest", Text3: "Heat to 12.0")
                        }
                    }
                }
                HStack {
                    ZStack {
                        Rectangle()
                            .tint(.white)
                        HStack {
                            Image(systemName: "lock.fill")
                            BoxStruct(Text1: "Hallway", Text2: "Nest", Text3: "Heat to 12.0")
                        }
                    }
                    ZStack {
                        Rectangle()
                            .tint(.white)
                        HStack {
                            Image(systemName: "lock.fill")
                            BoxStruct(Text1: "Basement", Text2: "Side Door", Text3: "Locked")
                        }
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
