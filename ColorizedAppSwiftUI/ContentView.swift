//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Александр Соколов on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)

    var body: some View {
          VStack {
              Color(red: redValue/255, green: greenValue/255, blue: blueValue/255)
                  .frame(width: 360, height: 140)
                  .overlay(RoundedRectangle(cornerRadius: 15)
                      .stroke(.white, lineWidth: 4))
                  
              Spacer()

              VStack {
                  Text("Red: \(Int(redValue))").padding(.horizontal)
                  Slider(value: $redValue, in: 0...255, step: 1.0)
                      .accentColor(.red)
                 
                  Text("Green: \(Int(greenValue))").padding(.horizontal)
                  Slider(value: $greenValue, in: 0...255, step: 1.0)
                      .accentColor(.green)
                  
                  Text("Blue: \(Int(blueValue))").padding(.horizontal)
                
                  Slider(value: $blueValue, in: 0...255, step: 1.0)
                      .accentColor(.blue)
                    
                  Spacer()
              }
          }
          .padding()

  }
}
//
#Preview {
    ContentView()
}
