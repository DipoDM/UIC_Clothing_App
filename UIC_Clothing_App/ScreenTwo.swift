//
//  ScreenTwo.swift
//  UIC_Clothing_App
//
//  Created by ODM on 10/11/20.
//

import SwiftUI

struct ScreenTwo: View {
    var body: some View {
        
        TabView{
            HomeScreen()
                .tabItem {
                    VStack(spacing: 10) {
                        Image(systemName: "house.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        Text("Home")
                            .fontWeight(.medium)
                    }
                }
            CategoryScreen()
                .tabItem {
                    VStack(spacing: 10) {
                        Image(systemName: "rectangle.grid.2x2")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        Text("Category")
                            .fontWeight(.medium)
                    }
                }
            FavScreen()
                .tabItem {
                    VStack(spacing: 10) {
                        Image(systemName: "suit.heart")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        Text("Favourite")
                            .fontWeight(.medium)
                    }
                }
            CartScreen()
                .tabItem {
                    VStack(spacing: 10) {
                        Image(systemName: "cart")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        Text("Cart")
                            .fontWeight(.medium)
                    }
                }
        }

               .accentColor(.blue)
    }
    
}



struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwo()
            .environment(\.colorScheme, .dark)
    }
}

