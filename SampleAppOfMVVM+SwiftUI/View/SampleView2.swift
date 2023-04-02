//
//  SampleView2.swift
//  SampleAppOfMVVM+SwiftUI
//
//  Created by 滝野翔平 on 2023/04/02.
//

import SwiftUI

struct SampleView2: View {
    @StateObject var viewModel: ViewModel2

    var body: some View {
        VStack(spacing: 8) {
            Text("\(viewModel.count)")
            Button("Count Up") {
                viewModel.count += 1
            }
        // $をつけて渡す
            SampleSubView2(stars: $viewModel.stars) { len in
            // クロージャーで処理を渡す
                viewModel.changeStarsLength(len)
            }
        }
    }
}

struct SampleSubView2: View {
    @Binding private var stars: String
    
    private var handler: (Int) -> Void
    
    init(stars: Binding<String>, action handler: @escaping (Int) -> Void) {
        self._stars = stars
        self.handler = handler  // クロージャーを保持
    }
    
    var body: some View {
        VStack(spacing: 8) {
            Text(stars)
            Button("Change Stars Length") {
                handler(Int.random(in: 1 ..< 10))
            }
        }
    }
}
