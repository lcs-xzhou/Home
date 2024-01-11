//
//  BoxStruct.swift
//  HomeApp
//
//  Created by Fiona ZHOU on 2024-01-09.
//

import SwiftUI

struct BoxStruct: View {
    
    let Text1: String
    let Text2: String
    let Text3: String
    let color: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 180, height: 80)
                .cornerRadius(20)
                .foregroundColor(color)
            HStack {
                VStack {
                    HStack {
                        Text(Text1)
                            .foregroundStyle(.gray)
                    }
                    HStack {
                        Text(Text2)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                    }
                    HStack {
                        Text(Text3)
                            .foregroundStyle(.gray)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    BoxStruct(Text1: "Garage", Text2: "Door", Text3: "Closed", color: .black)
}
