//
//  WeatherButton.swift
//  Weather
//
//  Created by Frank Solleveld on 26/05/2021.
//

import SwiftUI

struct WeatherButton: View {
    
    var buttonTitle: String
    var foregroundColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Button {
            print("Wouldn't you like to know, weather boy?")
        } label: {
            Text(buttonTitle)
                .frame(width: 280, height: 50)
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(10)
        }
    }
}
