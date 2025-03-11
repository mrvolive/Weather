//
//  WeatherApp.swift
//  Weather
//
//  Created by maraval olivier on 11/02/2025.
//

import SwiftUI

@main
struct WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ForecastsViewModel())
        }
    }
}
