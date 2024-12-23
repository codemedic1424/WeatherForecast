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
            DayForecast(day: "Mon")
            
            DayForecast(day: "Tues")
                
            }
            .padding()
        }
    }


#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    var body: some View {
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
