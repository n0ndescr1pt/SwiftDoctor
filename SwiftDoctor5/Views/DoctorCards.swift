//
//  DoctorPad.swift
//  FirstProject
//
//  Created by Aleksandr on 20.11.2023.
//

import Foundation
import SwiftUI



struct DoctorCards: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            
            HStack(alignment: .center) {
          // Space Between
                HStack(alignment: .center, spacing: 12){
                    
                    
                    ZStack(){
                        Image("doctor2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 58.439998626708984, height: 73.08000183105469)
                            .clipped()
                    }
                    .background(.white)
                    .clipShape(Circle())
                            
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Dr. Joseph Brostito")
                            .font(
                                Font.custom("Poppins", size: 16)
                                    .weight(.bold)
                            )
                            .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
                        
                        Text("Dental Specialist")
                            .font(Font.custom("Poppins", size: 14))
                            .foregroundColor(Color(red: 0.8, green: 0.88, blue: 1))
                        }
                    
                    }
            
          Spacer()
                
                HStack(alignment: .center, spacing: 8) {
                    Image("geo")
                    .resizable()
                    .frame(width: 16, height: 16)
                    
                    Text("1.2 KM")
                      .font(Font.custom("Poppins", size: 14))
                      .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
                .padding(0)
            }

            
                Rectangle()
                .stroke(.gray.opacity(0.15),lineWidth: 0.5)
                    .frame(height:1)
            
                
            HStack(alignment: .center, spacing: 12){
                
                HStack(alignment: .center, spacing: 8){
                    Image("clockGold")
                        .frame(width: 20, height: 20)
                    
                    Text("4,8 (120 Reviews)")
                      .font(Font.custom("Poppins", size: 12))
                      .foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
                
                HStack(alignment: .center, spacing: 8){
                    Image("clockBlue")
                        .frame(width: 20, height: 20)
                    
                    Text("Open at 17.00")
                      .font(Font.custom("Poppins", size: 12))
                      .foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            
         }
        
        .frame(width: 327, alignment: .top)
        .cornerRadius(12)
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(.white)
        .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
    }
}


struct DoctorCards_Previews: PreviewProvider {
    static var previews: some View {
        
        DoctorCards()
        
    }
}
