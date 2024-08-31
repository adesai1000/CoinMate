//
//  HomeView.swift
//  CoinMate
//
//  Created by Ayush Desai on 8/30/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showPortfolio: Bool = false
    
    var body: some View {
        ZStack{
            
            //background Layer
            Color.theme.background
                .ignoresSafeArea()
            
            //Content Layer
            VStack{
                HomeHeader
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    NavigationView{
        HomeView()
    }
}

extension HomeView{
    private var HomeHeader: some View{
        HStack{
            CircleButtonView(iconName: showPortfolio ? "plus" : "gear")
                .animation(.none)
                .background(CircleButtonAnimationView(animate: $showPortfolio))
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(Color.theme.accent)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chart.pie")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()){
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
