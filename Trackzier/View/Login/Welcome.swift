//
//  Welcome.swift
//  Trackzier
//
//  Created by Luciano Silva on 19/05/24.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        ZStack {
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Welcome()
}
