//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Александр Соколов on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = 127.0
        @State private var greenValue = 127.0
        @State private var blueValue = 127.0

        var body: some View {
            VStack {
                Color(red: redValue/255, green: greenValue/255, blue: blueValue/255)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                HStack {
                    Text("Red: \(Int(redValue))").padding(.horizontal)
                    Spacer()
                }
                Slider(value: $redValue, in: 0...255, step: 1.0)
                    .accentColor(.red)
                    .padding(.horizontal)

                HStack {
                    Text("Green: \(Int(greenValue))").padding(.horizontal)
                    Spacer()
                }
                Slider(value: $greenValue, in: 0...255, step: 1.0)
                    .accentColor(.green)
                    .padding(.horizontal)

                HStack {
                    Text("Blue: \(Int(blueValue))").padding(.horizontal)
                    Spacer()
                }
                Slider(value: $blueValue, in: 0...255, step: 1.0)
                    .accentColor(.blue)
                    .padding(.horizontal)
            }

    }
}

#Preview {
    ContentView()
}
