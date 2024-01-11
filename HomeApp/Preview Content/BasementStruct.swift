//
//  BasementStruct.swift
//  HomeApp
//
//  Created by Fiona ZHOU on 2024-01-10.
//

import SwiftUI

struct BasementStruct: View {
    
    let Text6: String
    let Text7: String
    let color3: Color
    let color4: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(color3)
                .cornerRadius(15)
                .frame(height: 80)
            VStack {
                Text(Text6)
                    .foregroundColor(color4)
                    .fontWeight(.bold)
                Text(Text7)
                    .foregroundColor(.gray)
            }
            .padding(.leading)
            .padding(.leading)
            .padding(.leading)
            
        }
    }
}

#Preview {
    BasementStruct(Text6: "Network", Text7: "On", color3: .white, color4: .black)
}
