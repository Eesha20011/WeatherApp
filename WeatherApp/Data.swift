//
//  Data.swift
//  WeatherApp
//
//  Created by Eesha on 2022-02-04.
//

import Foundation
import SwiftUI

func decode(City: String) -> Forecast {
    // 1. Locate the json file
    guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(City)&appid=d6b981833bb6010ccff315b4b2ccfc6e")
    else {
        fatalError("Invalid URL")
    }
    
    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let loaded = try decoder.decode(Forecast.self, from: data)
            return loaded}
    catch {
         print(error)
        fatalError("Failed to decode from bundle.")
            }
    // 5. Return the ready-to-use data
    
}
func WhichCity(CityName: String) -> Forecast {
    let data = decode(City: CityName)
    return data
}

func NameofCity(city: String) -> String {
    let name = decode(City: city).name
    return name
}

func Today(city: String) -> String {
    let today = decode(City: city).weather[0].main
    return today
}

func Temperature(city: String) -> Int {
    let dict = WhichCity(CityName: city).main
    var finaltemperature: Float = 0.0
    for (name,temp) in dict {
        if name == "temp" {
            finaltemperature = round(temp*10)/10.0
        }
    }
    return Int(finaltemperature - 273.15)
}

func MaxTemperature(city: String) -> Int {
    let dict = WhichCity(CityName: city).main
    var finaltemperature: Float = 0.0
    for (name,temp) in dict {
        if name == "temp_max" {
            finaltemperature = round(temp*10)/10.0
        }
    }
    return Int(finaltemperature - 273.15)
}

func MinTemperature(city: String) -> Int {
    let dict = WhichCity(CityName: city).main
    var finaltemperature: Float = 0.0
    for (name,temp) in dict {
        if name == "temp_min" {
            finaltemperature = round(temp*10)/10.0
        }
    }
    return Int(finaltemperature - 273.15)
}












