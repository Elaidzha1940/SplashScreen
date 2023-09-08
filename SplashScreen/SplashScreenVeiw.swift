//  /*
//
//  Project: SplashScreen
//  File: SplashScreenVeiw.swift
//  Created by: Elaidzha Shchukin
//  Date: 08.09.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct SplashScreenVeiw: View {
    @State private var isActive = false
    @State private var size = 0.6
    @State private var opacity = 0.5
    
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color("geogray")

                VStack {
                    VStack {
                        Image("union")
                        
                        Text("GeoTask")
                            .font(.system(size: 50, weight: .bold, design: .rounded))
                            .foregroundColor(Color("geomint"))
                            .padding(.vertical, 40)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true                            
                        }
                    }
                }
            }
            .ignoresSafeArea()
        }
        
    }
}

struct SplashScreenVeiw_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenVeiw()
    }
}
