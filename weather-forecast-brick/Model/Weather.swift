//
//  Weather.swift
//  weather-forecast-brick
//
//  Created by Мария Анисович on 12.08.2024.
//

import Foundation

struct WeatherData: Codable {
    let weather: [Weather]
    let main: Main
    let wind: Wind
}

struct Weather: Codable {
    let description: String
}

struct Main: Codable {
    let temp: Double
}

struct Wind: Codable {
    let speed: Double
}
