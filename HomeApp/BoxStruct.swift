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
    let color2: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 80)
                .cornerRadius(15)
                .foregroundColor(color)
            HStack {
                VStack {
                    HStack {
                        Text(Text1)
                            .foregroundStyle(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text(Text2)
                            .foregroundStyle(color2)
                            .font(.callout)
                            .fontWeight(.bold)
                    }
                    HStack {
                        Text(Text3)
                            .foregroundStyle(.gray)
                            .font(.callout)
                    }
                }
                .padding(.leading)
                .padding(.leading)
            }
        }
    }
}

#Preview {
    BoxStruct(Text1: "Garage", Text2: "Door", Text3: "Closed", color: .black, color2: .white)
}
