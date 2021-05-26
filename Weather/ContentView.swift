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
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Rotterdam, ZH")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("23")
                        .font(.system(size: 60, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
             
                HStack(spacing: 25) {
                    WeatherDayView(day: "MON", imageName: "sun.haze.fill", temp: 25)
                    WeatherDayView(day: "TUE", imageName: "sun.max.fill", temp: 28)
                    WeatherDayView(day: "WED", imageName: "sun.max.fill", temp: 32)
                    WeatherDayView(day: "THU", imageName: "cloud.bolt.rain.fill", temp: 30)
                    WeatherDayView(day: "FRI", imageName: "cloud.rain.fill", temp: 13)
                }
                Spacer()
                Button {
                    print("Button tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
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
