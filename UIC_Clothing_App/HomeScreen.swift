//
//  HomeScreen.swift
//  UIC_Clothing_App
//
//  Created by ODM on 10/11/20.
//

import SwiftUI

struct HomeScreen: View {
    @State var text = ""
    var body: some View{
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack {
                    Text("GOOD MORNING XT")
                        .foregroundColor(.gray)
                        .font(.system(size: 17))
                    
                    Spacer()
                }
                .padding(10)
                
                HStack(alignment: .center) {
                    Text("Today's Offers")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    Image("mercy")
                        .resizable()
                        .scaledToFill()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 50, height: 50)
                }
                .padding([.horizontal, .bottom], 10)
                
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                        
                        TextField("Search", text: $text)
                            .padding()
                        
                        Image(systemName: "mic.fill")
                            .foregroundColor(.white)
                    }
                    
                    .padding(.horizontal)
                    .background(Color.gray.opacity(0.9))
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.4)))
                    
                    .padding()
                    
                    Image("image3")
                        .resizable()
                        .frame(height: UIScreen.main.bounds.height / 3.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaledToFill()
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .overlay(
                            Text("20% OFF\nFLAT.")
                                .font(.system(size: 45))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .padding([.horizontal], 30)
                            , alignment: .topLeading)
                        .overlay(
                            HStack{
                                Text("Men")
                                    .foregroundColor(.white)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                
                                Divider()
                                    .frame(width: 2, height: 15)
                                    .background(Color.white)
                                
                                Text("Women")
                                    .foregroundColor(.white)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                
                                Divider()
                                    .frame(width: 2, height: 15)
                                    .background(Color.white)
                                
                                Text("Kids")
                                    .foregroundColor(.white)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            .padding([.horizontal], 30)
                            .padding(.vertical)
                            , alignment: .bottomLeading
                        )
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                CardView(image: dummyData[item].image, itemName: dummyData[item].itemName)
                            }
                        }
                        .padding()
                    }
                }
                
        
                
                Spacer()
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct CardView: View {
    var image : String
    var itemName : String
    
    var body: some View {
        ZStack{
            Image(image)
                .resizable()
                .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 4)
                .cornerRadius(10)
                .overlay(
                    ZStack{
                        Color.black.opacity(0.7)
                        
                        HStack {
                            VStack(alignment: .leading){
                                Text("Back to basic")
                                    .foregroundColor(.gray)
                                    .padding(.horizontal, 30)
                                
                                Text(itemName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .padding(.horizontal, 30)
                            }
                            
                            Spacer()
                        }
                    }
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    , alignment: .bottom
                )
        }
    }
}
