//
//  Cars.swift
//  SwiftListView
//
//  Created by Andrew Seeley on 1/7/19.
//  Copyright © 2019 Seemu. All rights reserved.
//

import SwiftUI

struct Cars : Identifiable {
  var id = UUID()
  var make: String;
  var model: String;
  var imageName: String { return make }
}

#if DEBUG
let testData = [
  Cars(make: "BMW", model: "335i"),
  Cars(make: "Ferrari", model: "458 Italia"),
  Cars(make: "Mitsubishi", model: "Evolution X")
]

#endif
