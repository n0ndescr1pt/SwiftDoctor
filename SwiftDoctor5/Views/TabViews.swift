//
//  TabViews.swift
//  SwiftDoctor5
//
//  Created by Student on 23.11.2023.
//

import Foundation
import SwiftUI


struct TabViews: View {
    @State var selectTab = "Home"
    
    let tabs = ["Home","Calendar","Message","Profile"]
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        
        
        
        ZStack(alignment: .bottom) {
            
            TabView (selection: $selectTab){
                
                HomeView()
                    .tag("Home")
                   
                CalendarView()
                    .tag("Calendar")
                    
                MessageView()
                    .tag("Message")
                   
                
                ProfileView()
                    .tag("Profile")
                    
            }
            
            HStack{
             
                ForEach(tabs, id: \.self){ tab in
                    TabBarItem(tab: tab, selected: $selectTab)
                }
                
            }
            .background(.white)
            .padding(.top,12)
            .frame(maxWidth: .infinity)
            
            
        }
    }
}
    

struct TabBarItem: View {
    @State var tab: String
    @Binding var selected: String
    var body: some View {
       
        
        ZStack(alignment: .bottom) {
                Button{
                    withAnimation(.spring()){
                        selected = tab
                    }
                    
                } label: {
                    HStack{
                        Image(tab)
                            .resizable()
                            .frame(width: 24, height: 24)
                        if selected == tab{
                            Text(tab)
                                .font(
                                    Font.custom("Nunito", size: 14)
                                        .weight(.bold)
                                )
                        }
                    }
                }
                
            }
            
            .padding(.horizontal, 22)
            .padding(.vertical, 16)
            .background(selected == tab ? Color(red: 0.39, green: 0.71, blue: 1).opacity(0.1):Color.white)
            .cornerRadius(12)
        }
        
    }



struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        
        TabViews()
        
        
    }
}

