//
//  DoctorPad.swift
//  FirstProject
//
//  Created by Aleksandr on 20.11.2023.
//

import Foundation
import SwiftUI



struct DoctorPad: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            
            HStack(alignment: .center) {
          // Space Between
                HStack(alignment: .center, spacing: 12){
                    
                    
                    ZStack(){
                        Image("doctor")
                    }
                    .background(.white)
                    .clipShape(Circle())
                            
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Dr. Imran Syahir")
                            .font(
                                Font.custom("Poppins", size: 16)
                                    .weight(.bold)
                            )
                            .foregroundColor(.white)
                        
                        Text("General Doctor")
                            .font(Font.custom("Poppins", size: 14))
                            .foregroundColor(Color(red: 0.8, green: 0.88, blue: 1))
                        }
                    
                    }
            
          Spacer()
                
                Image("arrow-right")
                    .resizable()
                    .frame(width: 24, height: 24)
            }

            
                Rectangle()
                    .stroke(.white.opacity(0.15),lineWidth: 1)
                    .frame(height:1)
            
                
            HStack(alignment: .center, spacing: 12){
                
                HStack(alignment: .center, spacing: 8){
                    Image("calendar1")
                        .frame(width: 16, height: 16)
                    
                    Text("Sunday, 12 June")
                        .font(Font.custom("Poppins", size: 12))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
                
                HStack(alignment: .center, spacing: 8){
                    Image("clock")
                        .frame(width: 16, height: 16)
                    
                    Text("11:00 - 12:00 AM")
                        .font(Font.custom("Poppins", size: 12))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            
         }
        
        .padding(20)
        .frame(width: 327, alignment: .top)
        .background(Color(red: 0.28, green: 0.58, blue: 1))
        .cornerRadius(12)
    }
}

