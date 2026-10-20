//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Robin Spinks on 20/10/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 20, low: 18)
            DayForecast(day: "Tue", isRainy: true, high: 15, low: 10)
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
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
            Text("High: \(high)ºc")
            Text("Low: \(low)ºc")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
