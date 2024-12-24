//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Christopher Wilshusen on 12/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Weekly Weather")
            .font(.largeTitle)
            .underline(color: .black)
        VStack {
            HStack {
                DayForecast(day: "Mon", high: 72, low: 60, isRainy: false)
                DayForecast(day: "Tues", high: 58, low: 30, isRainy: true)
                DayForecast(day: "Wed", high: 56, low: 32, isRainy: false)
            }
            .padding()
            HStack {
                DayForecast(day: "Thurs", high: 76, low: 58, isRainy: false)
                DayForecast(day: "Fri", high: 72, low: 50, isRainy: true)
                DayForecast(day: "Sat", high: 60, low: 38, isRainy: false)
                }
            .padding()
            HStack {
                DayForecast(day: "Sun", high: 54, low: 30, isRainy: false)
            }
            .padding()
        }
        }
    }


#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool
    
    var iconeName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.red
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconeName)
                .foregroundStyle(iconColor)
            Text("High: \(high)º")
                .fontWeight(.light)
            Text("Low: \(low)º")
                .fontWeight(.light)
                .foregroundStyle(Color.secondary)
        }
        .backgroundStyle(Color.teal)
        .padding()
        .background(Color.blue).opacity((0.7))
       
    }
}
