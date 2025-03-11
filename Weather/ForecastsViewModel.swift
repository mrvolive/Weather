//
//  ForecastsViewModel.swift
//  Weather
//
//  Created by maraval olivier on 11/03/2025.
//

import Foundation

class ForecastsViewModel: ObservableObject{
    
    @Published var forecasts: [Temperature] = []
    
    init() {
        getForecasts()
    }
    
    func getForecasts(){
        let newForecasts = [
            Temperature(📆: "MON", 🌡️: 20),
            Temperature(📆: "TUE", 🌡️: 28),
            Temperature(📆: "WED", 🌡️: 5),
            Temperature(📆: "THU", 🌡️: 0),
            Temperature(📆: "FRI", 🌡️: 10),
        ]
        self.forecasts = newForecasts
    }
    
    func reloadTemperature(){
        for i in 0..<forecasts.count{
            forecasts[i].🌡️ += 1
        }
    }
}
