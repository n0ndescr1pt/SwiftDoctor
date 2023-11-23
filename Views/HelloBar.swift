//
//  HelloBar.swift
//  FirstProject
//
//  Created by Aleksandr on 18.11.2023.
//

import Foundation
import SwiftUI


struct HelloBar: View {
    var body: some View {
        
        HStack(alignment: .center) {
            
            VStack(alignment: .leading, spacing: 6) {

                Text(Strings.HelloString)
                .font(Font.custom("Poppins", size: 16))
                .foregroundColor(Colors.HelloTextColor)

                Text(Strings.nameString)
                .font(
                Font.custom("Poppins", size: 20)
                .weight(.bold)
                )
                .foregroundColor(Colors.nameTextColor)

            }

            .padding(0)

            Spacer()
            // Alternative Views and Spacers
            //View()

            Image("Frame")
            .frame(width: 56, height: 56)
            
            }
        .padding(.top,54)
            .frame(width: 327, alignment: .center)
        
    }
}

