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
            VStack {
                Text("Cupertino, CA")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
            }
        }
    }
}

#Preview {
    ContentView()
}
