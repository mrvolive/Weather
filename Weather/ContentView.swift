//
//  ContentView.swift
//  Weather
//
//  Created by maraval olivier on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var 🌚: Bool = false
    
    @EnvironmentObject var forecastsVM: ForecastsViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [🌚 ? .black : .blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack {
                    Text("Cupertino, CA")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                    Button {
                        forecastsVM.reloadTemperature()
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                }
                Image(systemName: 🌚 ? "moon.stars.fill" : "cloud.sun.fill")
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
                    WeatherDayView(📆: forecastsVM.forecasts[0].📆, 🌆: "sun.max.fill", 🌡️: forecastsVM.forecasts[0].🌡️)
                    WeatherDayView(📆: forecastsVM.forecasts[1].📆, 🌆: "sun.max.fill", 🌡️: forecastsVM.forecasts[1].🌡️)
                    WeatherDayView(📆: forecastsVM.forecasts[2].📆, 🌆: "sun.max.fill", 🌡️: forecastsVM.forecasts[2].🌡️)
                    WeatherDayView(📆: forecastsVM.forecasts[3].📆, 🌆: "sun.max.fill", 🌡️: forecastsVM.forecasts[3].🌡️)
                    WeatherDayView(📆: forecastsVM.forecasts[4].📆, 🌆: "sun.max.fill", 🌡️: forecastsVM.forecasts[4].🌡️)
                }
                
                Spacer()
                
                Button {
                    print("isNight:" ,🌚)
                    🌚.toggle()
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .cornerRadius(12)
                }
                
                Spacer()
                
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
        .environmentObject(ForecastsViewModel())
}
