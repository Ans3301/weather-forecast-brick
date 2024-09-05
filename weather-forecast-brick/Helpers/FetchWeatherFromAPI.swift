//
//  FetchWeatherFromAPI.swift
//  weather-forecast-brick
//
//  Created by Мария Анисович on 04.09.2024.
//

import Foundation

func fetchWeatherFromAPI(lat: Double, lon: Double) async throws -> WeatherData {
    let apiKey = "335cad2858dc07d36bab467c159f7dd6"
    let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(apiKey)&units=metric"
    let url = URL(string: urlString)!

    let (data, _) = try await URLSession.shared.data(from: url)

    let decoded = try JSONDecoder().decode(WeatherData.self, from: data)

    return decoded
}
