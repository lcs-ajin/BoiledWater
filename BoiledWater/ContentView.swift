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
        }
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
