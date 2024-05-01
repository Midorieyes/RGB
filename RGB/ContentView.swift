//
//  ContentView.swift
//  RGB
//
//  Created by Apprenant44 on 24/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var colorRed:Double = 255
    @State var colorGreen:Double = 255
    @State var colorBlue:Double = 255
    var body: some View {
        ZStack{
            Color(red: colorRed/255, green: colorGreen/255, blue: colorBlue/255)
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    
                    VStack {
                        
                        HStack{
                            Text("0")
                            Slider(value: $colorRed, in: 0...255 )
                            Text("255")
                        }
                        Text("Red \(Int(colorRed))")
                    }
                    VStack {
                        HStack{
                            Text("0")
                            Slider(value: $colorGreen, in: 0...255 )
                            Text("255")
                        }
                        Text("Green \(Int(colorGreen))")
                    }
                    VStack {
                        HStack{
                            Text("0")
                            Slider(value: $colorBlue, in: 0...255 )
                            Text("255")
                        }
                        Text("Blue \(Int(colorBlue))")
                    }
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

#Preview {
    ContentView()
}
