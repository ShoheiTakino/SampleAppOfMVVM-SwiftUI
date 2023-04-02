//
//  SampleView.swift
//  SampleAppOfMVVM+SwiftUI
//
//  Created by 滝野翔平 on 2023/04/02.
//

import SwiftUI

struct SampleView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        VStack(spacing: 8) {
            Text("\(viewModel.count)")
            Button("Count Up") {
                viewModel.count += 1
            }
            SampleSubView(viewModel: viewModel)
        }
    }
}

struct SampleSubView: View {
    @ObservedObject var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 8) {
            Text(viewModel.stars)
            Button("Change Stars Length") {
                viewModel.changeStarsLength(Int.random(in: 1 ..< 10))
            }
        }
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView(viewModel: ViewModel(model: Model()))
    }
}
