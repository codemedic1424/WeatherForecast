//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Christopher Wilshusen on 12/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Mon")
                Image(systemName: "sun.max.fill")
                    .foregroundStyle(Color.yellow)
                Text("High: 70")
                Text("Low: 50")
                
            }
            .padding()
        }
        VStack {
            Text("Mon")
            Image(systemName: "sun.max.fill")
                .foregroundStyle(Color.yellow)
            Text("High: 70")
            Text("Low: 50")
            
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
