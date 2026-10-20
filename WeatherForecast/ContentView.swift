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
                DayForecast(day: "Mon", isRainy: false, isCloudy: false, high: 32, low: 30)
                DayForecast(day: "Tue", isRainy: true, isCloudy: false, high: 28, low: 26)
                DayForecast(day: "Wed", isRainy: false, isCloudy: false, high: 24, low: 22)
                DayForecast(day: "Thu", isRainy: true, isCloudy: true, high: 20, low: 18)
                DayForecast(day: "Mon", isRainy: false, isCloudy: true, high: 16, low: 14)
                DayForecast(day: "Sat", isRainy: false, isCloudy: true, high: 12, low: 10)
                DayForecast(day: "Sun", isRainy: true, isCloudy: true, high: 8, low: 6)
            }
        }
    }
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let isCloudy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            isCloudy ? "cloud.rain.fill" : "sun.rain.fill"
        } else {
            isCloudy ? "cloud.fill" : "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isCloudy {
            isRainy ? Color.blue : Color.gray
        } else {
            isRainy ? Color.orange : Color.yellow
        }
    }
    
    var highColor: Color {
        high > 30 ? Color.red : Color.black
    }
    
    var lowColor: Color {
        low < 10 ? Color.blue : Color.black
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(3)
            Text("High: \(high)ºc")
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(highColor)
            Text("Low: \(low)ºc")
                .fontWeight(Font.Weight.regular)
                .foregroundStyle(lowColor)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
