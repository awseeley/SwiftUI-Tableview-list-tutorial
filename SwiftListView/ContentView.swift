//
//  ContentView.swift
//  SwiftListView
//
//  Created by Andrew Seeley on 1/7/19.
//  Copyright © 2019 Seemu. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  
    var cars: [Cars] = testData
  
    var body: some View {
      
      NavigationView {
        List(cars) { item in
          Group {
            Image(item.imageName).resizable().frame(width: 32.0, height: 32.0)
            VStack(alignment: .leading) {
              Text(item.make)
              Text(item.model)
                .font(.subheadline)
                .color(.gray)
            }
            }.tapAction {
              print("Hi I am on")
              print(item.id)
              print(item.model)
          }
        }.navigationBarTitle(Text("My Garage"))
      }
      
      
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
      ContentView(cars: testData)
    }
}
#endif
