//
//  ViewModel.swift
//  SampleAppOfMVVM+SwiftUI
//
//  Created by 滝野翔平 on 2023/04/02.
//

import Foundation

@MainActor
class ViewModel: ObservableObject {
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
    
    var stars: String {
        return model.stars
    }
    
    func changeStarsLength(_ len: Int) {
        model.changeStarsLength(len)
    }
}
