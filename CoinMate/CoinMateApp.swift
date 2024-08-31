//
//  CoinMateApp.swift
//  CoinMate
//
//  Created by Ayush Desai on 8/28/24.
//

import SwiftUI

@main
struct CoinMateApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .toolbar(.hidden)
            }
        }
    }
}
