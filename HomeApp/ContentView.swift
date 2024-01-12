//
//  ContentView.swift
//  HomeApp
//
//  Created by Fiona ZHOU on 2024-01-09.
//


import SwiftUI

struct ContentView: View {

    let gradientColors = Gradient(colors: [Color.blue1, Color.yellow1])
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                LinearGradient(gradient: gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
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
                            ZStack {
                                MyHomeStructure(Text4: "Climate", Text5: "16.0-20.5")
                                HStack {
                                    Image(systemName: "fan.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 15)
                                        .foregroundColor(.G)
                                    Spacer()
                                }
                            }
                            .padding(.trailing)
                            ZStack {
                                MyHomeStructure(Text4: "Security", Text5: "No Alerts")
                                HStack {
                                    Image(systemName: "lock.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height:15)
                                        .foregroundColor(.G)
                                    Spacer()
                                }
                            }
                            .padding(.trailing)
                            ZStack {
                                MyHomeStructure(Text4: "Speakers", Text5: "None Play")
                                HStack {
                                    Image(systemName: "tv.and.mediabox.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 15)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                            }
                        }
                    }
                    VStack {
                        HStack {
                            Text("Favorites")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.top)
                        HStack {
                            ZStack {
                                BoxStruct(Text1: "Garage", Text2: "Door", Text3: "Closed", color: .DB, color2: .white)
                                HStack {
                                    Image(systemName: "door.garage.closed")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height:25)
                                        .foregroundColor(.G)
                                        .padding(.leading)
                                    Spacer()
                                }
                            }
                            .padding(.trailing)
                            ZStack {
                                BoxStruct(Text1: "Hallway", Text2: "Nest", Text3: "Heat to 12.0", color: .white, color2: .black)
                                HStack {
                                    Text("17.5")
                                        .foregroundColor(.black)
                                        .padding(.leading)
                                        .fontWeight(.bold)
                                        .font(.title3)
                                    Spacer()
                                }
                            }
                        }
                        HStack {
                            ZStack {
                                BoxStruct(Text1: "Living Room", Text2: "Front Door", Text3: "Locked", color: .DB, color2: .white)
                                HStack {
                                    Image(systemName: "lock.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height:25)
                                        .foregroundColor(.G)
                                        .padding(.leading)
                                    Spacer()
                                }
                            }
                            .padding(.trailing)
                            ZStack {
                                BoxStruct(Text1: "Basement", Text2: "Side Door", Text3: "Locked", color: .DB, color2: .white)
                                HStack {
                                    Image(systemName: "lock.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height:25)
                                        .foregroundColor(.G)
                                        .padding(.leading)
                                    Spacer()
                                }
                            }
                        }
                    }
                    VStack {
                        HStack {
                            Text("Basement")
                                .font(.title2)
                                .fontWeight(.bold)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.top)
                        HStack {
                            ZStack {
                                BasementStruct(Text6: "Network", Text7: "On", color3: .white, color4: .black)
                                HStack {
                                    ZStack {
                                        Circle()
                                            .frame(height:50)
                                            .foregroundColor(.yellow)
                                        Image(systemName: "ev.plug.ac.type.1.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height:27)
                                            .foregroundColor(.white)
                                    }
                                    .padding(.leading)
                                    Spacer()
                                }
                            }
                            .padding(.trailing)
                            ZStack {
                                BasementStruct(Text6: "Hub", Text7: "On", color3: .white, color4: .black)
                                HStack {
                                    ZStack {
                                        Circle()
                                            .frame(height:50)
                                            .foregroundColor(.yellow)
                                        Image(systemName: "ev.plug.ac.type.1.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height:27)
                                            .foregroundColor(.white)
                                    }
                                    .padding(.leading)
                                    Spacer()
                                }
                            }
                        }
                        HStack {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.DB)
                                    .cornerRadius(15)
                                    .frame(height: 160)
                                VStack {
                                    HStack {
                                        ZStack {
                                            Circle()
                                                .foregroundColor(.black)
                                                .frame(height: 50)
                                            Image(systemName: "lock.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height:25)
                                                .foregroundColor(.G)
                                        }
                                        .padding(.top)
                                    .padding(.leading)
                                        Spacer()
                                    }
                                    Spacer()
                                    HStack {
                                        VStack {
                                            Text("Side Door")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                            Text("Locked")
                                                .foregroundColor(.gray)
                                                .padding(.trailing)
                                        }
                                        Spacer()
                                    }
                                    .padding(.bottom)
                                    .padding(.leading)
                                }
                            }
                            .padding(.trailing)
                            VStack {
                                ZStack {
                                    BasementStruct(Text6: "Apple TV", Text7: "Not Playing", color3: .DB, color4: .white)
                                    HStack {
                                        Image(systemName: "appletv.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height:30)
                                            .foregroundColor(.gray)
                                            .padding(.leading)
                                        Spacer()
                                    }
                                }
                                ZStack {
                                    BasementStruct(Text6: "HomePad", Text7: "Not Playing", color3: .DB, color4: .white)
                                    HStack {
                                        Image(systemName: "homepodmini.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height:30)
                                            .foregroundColor(.gray)
                                            .padding(.leading)
                                        Spacer()
                                    }
                                }
                            }
                        }
                    }
                }
                .padding()
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        HStack {
                            Image(systemName: "waveform")
                                .foregroundColor(.white)
                                .padding()
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .padding()
                            Image(systemName: "ellipsis.circle")
                                .foregroundColor(.white)
                                .padding()
                        }
                    }
                }
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
