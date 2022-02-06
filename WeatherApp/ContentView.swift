//
//  ContentView.swift
//  WeatherApp
//
//  Created by Eesha on 2022-02-04.
//

import SwiftUI


struct ContentView: View {
    var nameCity: String
    var Temperature1: Float
    var HighTemperature: Float
    var LowTemperature: Float
    var Today: String
    
    var body: some View {
        ZStack{
            Image("Picture3")
            VStack {
                Text(nameCity)
                    .font(.system(size: 50))
                    .fontWeight(.light)
                    .foregroundColor(.white)
            HStack {
       Text(String(Temperature1))
                .font(.system(size: 120))
                .fontWeight(.light)
                .foregroundColor(.white)
                VStack {
                Text("o")
                    .font(.system(size: 70))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    Spacer()
                        .frame(height:80 )
                }
            }
                Spacer()
                    .frame(height: 20, alignment: .center)
                ZStack{
                Rectangle()
                    .frame(width: 400, height: 200, alignment: .center)
                    .foregroundColor(.white)
                    .opacity(0.5)
                    .cornerRadius(20)
                    HStack(spacing: 50) {
                    VStack{
                        Image(systemName: "sun.min.fill")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .opacity(0.7)
                        Text("High")
                            .foregroundColor(.black)
                            .font(.system(size: 40))
                            .fontWeight(.light)
                    Text(String(HighTemperature))
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .fontWeight(.light)
                    }
                        VStack{
                            Image(systemName: "thermometer.sun.fill")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .opacity(0.7)
                            Text("Low")
                                .foregroundColor(.black)
                                .font(.system(size: 40))
                                .fontWeight(.light)
                        Text(String(LowTemperature))
                            .foregroundColor(.black)
                            .font(.system(size: 30))
                            .fontWeight(.light)
                        }
                        VStack{
                            Image(systemName: "cloud.sun.rain.fill")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .opacity(0.7)
                         
                            Text("Today")
                                .foregroundColor(.black)
                                .font(.system(size: 40))
                                .fontWeight(.light)
                                .fixedSize()
                            Text(String(Today))
                            .foregroundColor(.black)
                            .font(.system(size: 30))
                            .fontWeight(.light)
                            .fixedSize()
                        }
                    }
                }
                Spacer()
                    .frame(height: 300, alignment: .center)
            }
            VStack {
                Spacer()
                    .frame(height:550 )
               
            ZStack{
                Image("Picture4")
                    .resizable()
                    .frame(width: 400, height: 250, alignment: .center)
                VStack {
                    Spacer()
                        .frame( height: 150)
                Image("Picture2")
                    .resizable()
                    .frame(width: 400, height: 150, alignment: .center)
                }
            }
        }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(nameCity: NameofCity(city: "Montreal"), Temperature1: Float(Temperature(city: "Montreal")), HighTemperature: Float(MaxTemperature(city: "Montreal")), LowTemperature: Float(MinTemperature(city: "Montreal")), Today: Today(city: "Montreal"))
    }
}
