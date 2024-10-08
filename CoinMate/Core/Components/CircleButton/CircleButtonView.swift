//
//  CircleButtonView.swift
//  CoinMate
//
//  Created by Ayush Desai on 8/30/24.
//

import SwiftUI

struct CircleButtonView: View {
    let iconName: String
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
            Circle()
                .foregroundStyle(Color.theme.background)
            )
            .shadow(color: Color.theme.accent.opacity(0.50),
                    radius: 10, x:0.0, y:0.0)
            .padding()
    }
}

#Preview {
    CircleButtonView(iconName: "gear")
        .previewLayout(.sizeThatFits)
}
