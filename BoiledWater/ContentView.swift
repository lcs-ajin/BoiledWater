//
//  ContentView.swift
//  BoiledWater
//
//  Created by Anthony Jin on 2022-02-15.
//

import SwiftUI

struct ContentView: View {
    @State var B = Int.random(in: 80...120)
    var P : Int{
        return 5 * B - 400
    }
   
    var body: some View {
        HStack{
            Text("What is the current atmospheric pressure when the temperature is \(B)ºC?")
            
        }
        Divider()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
