
//
//  ButtonConstrustor.swift
//  FirstProject
//
//  Created by Aleksandr on 21.11.2023.
//

import Foundation
import SwiftUI




struct Buttons: View {
    
    var text: String
    var img: String
    
    init(text: String, img: String){
        self.text = text
        self.img = img
    }
    
    var body: some View {
        
        
        Button {} label: {
            VStack( spacing: 8){
            
                HStack(spacing: 10){
            
                        Image(img)
                            .frame(width: 24, height: 24)
                    
                }
                .padding(24)
                .background(Color(red: 0.98, green:0.98, blue: 0.98))
                .cornerRadius(100)
                
                Text(text)
                    .font(Font.custom("Poppins", size: 15))
                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
            }
            
        }
    }
}


struct ButtView: PreviewProvider {
    static var previews: some View {
        
            Buttons(text: "test", img: "sun")
           
        
        
    }
}
