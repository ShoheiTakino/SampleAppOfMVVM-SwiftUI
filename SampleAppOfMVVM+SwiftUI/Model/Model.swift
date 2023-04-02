//
//  Model.swift
//  SampleAppOfMVVM+SwiftUI
//
//  Created by 滝野翔平 on 2023/04/02.
//

import Foundation

struct Model {
    var count: Int = 0
    var stars: String = "★"
    
    mutating func changeStarsLength(_ len: Int) {
        self.stars = [String](repeating: "★", count: len).joined()
    }
}
