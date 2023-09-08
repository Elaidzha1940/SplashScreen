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
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        
        VStack {
            VStack {
                Image("union")
                
                Text("GeoTask")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .foregroundColor(Color("geomint"))
                    .padding(.vertical, 40)
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct SplashScreenVeiw_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenVeiw()
    }
}
