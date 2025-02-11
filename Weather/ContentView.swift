//
//  ContentView.swift
//  Weather
//
//  Created by maraval olivier on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                
                Text("20°")
                    .font(.system(size: 70,
                                  weight: .medium))
                    .foregroundStyle(.white)
                
                HStack{
                    WeatherDayView(📆: "Mon", 🌆: "sun.max.fill", 🌡️: "25°")
                }
            }
        }
    }
}

struct WeatherDayView: View {
    var 📆: String
    var 🌆: String
    var 🌡️: String
    
    var body: some View {
        VStack {
            Text(📆)
                .foregroundStyle(.white)
            
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
        }
        
    }
}

#Preview {
    ContentView()
}
