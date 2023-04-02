//
//  SampleAppOfMVVM_SwiftUIApp.swift
//  SampleAppOfMVVM+SwiftUI
//
//  Created by 滝野翔平 on 2023/04/02.
//

import SwiftUI

@main
struct SampleAppOfMVVM_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            SampleView2(viewModel: ViewModel2(model: Model()))
        }
    }
}

//@main
//struct SampleApp: App {
//    var body: some Scene {
//        WindowGroup {
//            SampleView2(viewModel: ViewModel2())
//        }
//    }
//}
