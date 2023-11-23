//
//  SearchPad.swift
//  FirstProject
//
//  Created by Aleksandr on 20.11.2023.
//

import Foundation
import SwiftUI


struct SearchPad: View {
    @State private var username: String = ""
    
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 12) {
            Image("search")
            
            TextField("Search doctor or health issue", text: $username)
        }
        .padding(16)
        .frame(width: 327, alignment: .leading)
        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
        .cornerRadius(12)
    }
}



struct SearchPadView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPad()
        
    }
}

