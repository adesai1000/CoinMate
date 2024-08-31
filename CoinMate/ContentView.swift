//
//  ContentView.swift
//  CoinMate
//
//  Created by Ayush Desai on 8/28/24.
//
 
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            VStack(spacing: 40){
                Text("Accent Color").foregroundColor(Color.theme.accent)
                Text("Secondary Text Color").foregroundStyle(Color.theme.secondaryText)
                Text("Red Color").foregroundStyle(Color.theme.red
                )
                Text("Green Color").foregroundStyle(Color.theme.green)
            }
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
