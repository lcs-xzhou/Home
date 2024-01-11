//
//  MyHomeStructure.swift
//  HomeApp
//
//  Created by Fiona ZHOU on 2024-01-10.
//

import SwiftUI

struct MyHomeStructure: View {
    
    
    let Text4: String
    let Text5: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 40)
                .cornerRadius(17)
                .foregroundColor(.DB)
            VStack {
                Text(Text4)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.footnote)
                Text(Text5)
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
        }
    }
}

#Preview {
    MyHomeStructure(Text4: "Climate", Text5: "16.0-20.5")
}
