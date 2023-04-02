//
//  ViewModel2.swift
//  SampleAppOfMVVM+SwiftUI
//
//  Created by 滝野翔平 on 2023/04/02.
//

import Foundation

@MainActor
class ViewModel2: ObservableObject {
    @Published var model: Model
    
    init(model: Model) {
        self.model = model
    }
    
    var count: Int {
        get {
            return model.count
        }
        set {
            model.count = newValue
        }
    }
    
    // 子ViewでBindingするためにはsetterが必要
    var stars: String {
        get {
            return model.stars
        }
        set {
            model.stars = newValue
        }
    }
    
    func changeStarsLength(_ len: Int) {
        model.changeStarsLength(len)
    }
}
