//
//  ContentView.swift
//  BoiledWater
//
//  Created by Anthony Jin on 2022-02-15.
//

import SwiftUI

struct ContentView: View {
    @State var B = 140.0
    
    
    var P : Double{
        return Double(5 * B - 400)
    }
    var feedback: String{
        switch P {
        case 0...100:
            return "It's above the sea level"
        default:
            return "It's below the sea level"
        }
            
        
    }
    
   
    var body: some View {
        VStack{
            
            HStack{
                
             Text("Temperature")
                    .bold()
                    Spacer()
                
            }
            Slider(value:
                $B,
                   in: Double(Int(80.0))...Double(Int(200.0)),
                   step: Double.Stride(Int.Stride(1.0)),
                   label: {
                Text("Temperature")
            },
                   minimumValueLabel: {
                Text("80.0")
            },
                   maximumValueLabel: {
                Text("200.0")
            })
            Text("\(String(format: "%.1f",B)) °C")
                .multilineTextAlignment(.center)
                .padding()
            
            HStack {
                Text("Atmosphric Pressure")
                    .bold()
                
                Spacer()
            }
            Text("\(String(format: "%.1f", P)) Kpa")
            Text(feedback)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Boiled Water")
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
