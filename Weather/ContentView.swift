//
//  ContentView.swift
//  Weather
//
//  Created by maraval olivier on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Cupertino, CA")
                .font(.largeTitle)
                .bold()
            Image(systemName: "cloud.sun.fill")
        }
    }
}

#Preview {
    ContentView()
}
