//
//  HomeView.swift
//  Trackzier
//
//  Created by Luciano Silva on 25/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            
            ZStack {
                
                Rectangle()
                    .foregroundColor(.gray70.opacity(0.5))
                    .frame(width: .screenWidth, height: .widthPer(per: 1.1))
                
            }
            
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
