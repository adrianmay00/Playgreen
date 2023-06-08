//
//  stepController.swift
//  testing-Academy
//
//  Created by Ravi  on 10/26/22.
//

import SwiftUI

enum item {
    case step1
    case step2
}

struct stepControllerView: View {

    @State var selectedItem: item = .step1

    var body: some View {
        switch selectedItem {
            case .home:
                Home()
            case .tab2:
                Text("Tab Content 2")
        }
    }
}
