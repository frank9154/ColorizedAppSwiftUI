//
//  SettingsView.swift
//  ColorizedAppSwiftUI
//
//  Created by Александр Соколов on 05.03.2024.
//

import SwiftUI

struct SettingsView: View {
    @State var redValue: Double
        @State var greenValue: Double
        @State var blueValue: Double
        @State var color: Color

       weak var delegate: SettingsViewControllerDelegate!

        init(delegate: SettingsViewControllerDelegate, color: Color) {
            self.delegate = delegate
            self.color = color
            let cgColor = UIColor(color).cgColor
            let components = cgColor.components
            redValue = Double(components![0])
            greenValue = Double(components![1])
            blueValue = Double(components![2])
        }

        var body: some View {
            ColorPicker("Color", selection: $color)
                .onChange(of: color, perform: { value in
                    delegate.setColor(UIColor(value))
                })
            VStack {
                HStack {
                    Text("Red")
                        .frame(width: 60, alignment: .leading)
                    Slider(value: $redValue, in: 0...1)
                    Text("\(String(format: "%.2f", redValue))")
                }
                HStack {
                    Text("Green")
                        .frame(width: 60, alignment: .leading)
                    Slider(value: $greenValue, in: 0...1)
                    Text("\(String(format: "%.2f", greenValue))")
                }
                HStack {
                    Text("Blue")
                        .frame(width: 60, alignment: .leading)
                    Slider(value: $blueValue, in: 0...1)
                    Text("\(String(format: "%.2f", blueValue))")
                }
            }
            .padding()

    }
}

#Preview {
    SettingsView()
}
