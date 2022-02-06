//
//  HomeView.swift
//  WeatherApp
//
//  Created by Eesha on 2022-02-05.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
        ZStack {
           Image("Picture1")
                .resizable()
                .frame(width: 550)
                .ignoresSafeArea()
            VStack {
        Text("Weather")
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .foregroundColor(.white)
        Text("""
Hold the power of weather knowledge right in the palm of your hands
""")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                    .frame(width: 400)
                    .fixedSize()
                Spacer()
                    .frame( height:50 )
                HStack {
                    Spacer()
                        .frame(width: 250)
                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 400, height: 400, alignment: .center)
                    .foregroundColor(.white)
                    .opacity(0.5)
                }
                Spacer()
                    .frame(height: 50)
            
    NavigationLink(destination: CitySearchView()) {
                ZStack{
                Capsule()
                    .frame(width: 350, height: 80, alignment: .center)
                    .foregroundColor(Color("Peach"))
                    Capsule()
                        .frame(width: 320, height: 60, alignment: .center)
                        .foregroundColor(Color("Orange"))
                        .opacity(0.3)
                   
                Text("Get Started")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.light)
                    }
                }
            }
        }
    }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
        
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
