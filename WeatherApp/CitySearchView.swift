//
//  CitySearchView.swift
//  WeatherApp
//
//  Created by Eesha on 2022-02-05.
//

import SwiftUI

struct CitySearchView: View {
 
    var body: some View {

            ZStack {
                Image("Picture3")
                
                Rectangle()
                    .frame(width: 300, height: 300, alignment: .center)
                    .foregroundColor(.white)
                    .opacity(0.7)
                    .cornerRadius(20)
                VStack(spacing: 20) {
                Text("Pick a city")
                        .font(.system(size: 40))
                        .fontWeight(.light)
                    VStack(spacing: 15) {
                        NavigationLink(destination:ContentView(nameCity: NameofCity(city: "Montreal"), Temperature1: Float(Temperature(city: "Montreal")), HighTemperature: Float(MaxTemperature(city: "Montreal")), LowTemperature: Float(MinTemperature(city: "Montreal")), Today: Today(city: "Montreal"))) {
                    Text("Montreal")
                        .font(.system(size: 30))
                        .fontWeight(.light)
                        }
                        NavigationLink(destination:ContentView(nameCity: NameofCity(city: "London"), Temperature1: Float(Temperature(city: "London")), HighTemperature: Float(MaxTemperature(city: "London")), LowTemperature: Float(MinTemperature(city: "London")), Today: Today(city: "London"))) {
                    Text("London")
                        .font(.system(size: 30))
                        .fontWeight(.light)
                        }
                        NavigationLink(destination:ContentView(nameCity: NameofCity(city: "Florida"), Temperature1: Float(Temperature(city: "Florida")), HighTemperature: Float(MaxTemperature(city: "Florida")), LowTemperature: Float(MinTemperature(city: "Florida")), Today: Today(city: "Florida"))) {
                    Text("Florida")
                        .font(.system(size: 30))
                        .fontWeight(.light)
                        }
                        NavigationLink(destination:ContentView(nameCity: NameofCity(city: "Washington"), Temperature1: Float(Temperature(city: "Washington")), HighTemperature: Float(MaxTemperature(city: "Washington")), LowTemperature: Float(MinTemperature(city: "Washington")), Today: Today(city: "Washington"))) {
                        
                    Text("Washington")
                        .font(.system(size: 30))
                        .fontWeight(.light)
                        }
                }
                }
            }
        }
    
}

struct CitySearchView_Previews: PreviewProvider {
    static var previews: some View {
        CitySearchView()
    }
}
