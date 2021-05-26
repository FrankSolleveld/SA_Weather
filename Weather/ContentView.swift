//
//  ContentView.swift
//  Weather
//
//  Created by Frank Solleveld on 26/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack {
                CityTextView(city: "Rotterdam")
                HighlightedWeaterView(imageName: "cloud.sun.fill", temp: 23)
                HStack(spacing: 25) {
                    WeatherDayView(day: "MON", imageName: "sun.haze.fill", temp: 25)
                    WeatherDayView(day: "TUE", imageName: "sun.max.fill", temp: 28)
                    WeatherDayView(day: "WED", imageName: "sun.max.fill", temp: 32)
                    WeatherDayView(day: "THU", imageName: "cloud.bolt.rain.fill", temp: 30)
                    WeatherDayView(day: "FRI", imageName: "cloud.rain.fill", temp: 13)
                }
                Spacer()
                WeatherButton(buttonTitle: "What is the weather?", foregroundColor: .blue, backgroundColor: .white)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var day: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack {
            Text(day)
                .fontWeight(.medium)
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            Text("\(temp)")
                .fontWeight(.medium)
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var city: String
    
    var body: some View {
        Text(city)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
    }
}

struct HighlightedWeaterView: View {
    
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temp)")
                .font(.system(size: 60, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
