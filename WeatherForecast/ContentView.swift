//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Robin Spinks on 20/10/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 20, low: 18)
                DayForecast(day: "Tue", isRainy: true, high: 15, low: 10)
                DayForecast(day: "Wed", isRainy: false, high: 20, low: 18)
                DayForecast(day: "Thu", isRainy: true, high: 15, low: 10)
                DayForecast(day: "Mon", isRainy: false, high: 20, low: 18)
                DayForecast(day: "Sat", isRainy: false, high: 20, low: 18)
                DayForecast(day: "Sun", isRainy: true, high: 15, low: 10)
            }
        }
    }
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        isRainy ? Color.blue : Color.yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding()
            Text("High: \(high)ºc")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)ºc")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
