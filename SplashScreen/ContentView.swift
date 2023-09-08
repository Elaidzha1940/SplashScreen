//  /*
//
//  Project: SplashScreen
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.09.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            Color.black
            
            VStack(spacing: 30) {
                Image("walkinggirl")
                    .padding(.top, 60)
                
                Text("Лекго создавайт спискидел и упрвляйте ими, устанавливайте напоминания по геолокации и больше никогда не пропускайте ни одной задачи")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 120)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                Button {
                    //action
                } label: {
                    Text("Начать")
                        .foregroundColor(.black)
                    
                }
                .frame(width: 150, height: 50)
                .background(Color("geomint"))
                .cornerRadius(25)
                .padding(.top, 40)
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
