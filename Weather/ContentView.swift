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
                    .padding(.bottom, 40)
                
                HStack(spacing: 20){
                    WeatherDayView(📆: "MON", 🌆: "sun.max.fill", 🌡️: 25)
                    WeatherDayView(📆: "TUE", 🌆: "sun.max.fill", 🌡️: 15)
                    WeatherDayView(📆: "WED", 🌆: "sun.max.fill", 🌡️: 20)
                    WeatherDayView(📆: "THU", 🌆: "sun.max.fill", 🌡️: 5)
                    WeatherDayView(📆: "FRI", 🌆: "sun.max.fill", 🌡️: 10)
                }
                
            }
        }
    }
}

struct WeatherDayView: View {
    var 📆: String
    var 🌆: String
    var 🌡️: Int
    
    var body: some View {
        VStack {
            Text(📆)
                .foregroundStyle(.white)
            
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(🌡️)")
                .foregroundStyle(.white)
        }
        
    }
}

#Preview {
    ContentView()
}
