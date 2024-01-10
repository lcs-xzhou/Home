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
    
    var body: some View {
        VStack {
            HStack {
                Text(Text1)
                    .tint(.gray)
                Spacer()
            }
            HStack {
                Text(Text2)
                    .tint(.white)
                    .fontWeight(.bold)
                Spacer()
            }
            HStack {
                Text(Text3)
                    .tint(.gray)
                Spacer()
            }
        }
    }
}

#Preview {
    BoxStruct(Text1: "Garage", Text2: "Door", Text3: "Closed")
}
