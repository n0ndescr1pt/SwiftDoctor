//
//  HomeView.swift
//  SwiftDoctor5
//
//  Created by Student on 23.11.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack (spacing:32){
                
                VStack (spacing: 24){
                    
                    HelloBar()
                    
                    VStack(spacing: 20){
                        
                        DoctorPad()
                        
                        SearchPad()
                        
                    }
                    
                    HStack(alignment: .top,spacing: 13) {
                        Buttons(text:"test", img: "sun")
                        Buttons(text:"test", img: "profile-add")
                        Buttons(text:"test", img: "link")
                        Buttons(text:"test", img: "hospital")
                    }
                    
                }
                .frame(width: .infinity)
                
                
                DoctorCards()
                DoctorCards()
                DoctorCards()
                
            }
            .frame(width:.infinity, height: 812)
            .background(.white)
            .padding(24)
        }
    }
}

