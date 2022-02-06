//
//  Model.swift
//  WeatherApp
//
//  Created by Eesha on 2022-02-04.
//

import Foundation

struct Forecast: Codable, Identifiable {
    struct Coord: Codable {
        var lon: Float
        var lat: Float
    }
    var coord: Dictionary<String,Float>
    var weather: [Weather]
    var base: String
    struct Main: Codable {
        var temp: Float
        var feels_like: Float
        var temp_min: Float
        var temp_max: Float
        var pressure: Float
        var humidity: Float
    }
    var main: Dictionary<String,Float>
    var visibility: Int
    struct Wind: Codable {
        var speed: Float
        var deg: Float
    }
    var wind: Dictionary<String,Float>
    struct Clouds: Codable {
        var all: Int
    }
    var clouds: Dictionary<String, Int>
    var dt: Int

    var timezone: Int
    var id: Int
    var name: String
    var cod: Int
}


struct Weather: Codable, Identifiable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}
