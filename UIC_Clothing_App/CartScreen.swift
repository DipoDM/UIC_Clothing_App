//
//  CartScreen.swift
//  UIC_Clothing_App
//
//  Created by ODM on 10/11/20.
//

import SwiftUI

struct CartScreen: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack{
                    
                    Text("Your Cart")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                        ForEach(0..<dummyData.count) { item in
                            CartItems(imageName: dummyData[item].image, itemName: dummyData[item].itemName, price: dummyData[item].price, size: dummyData[item].size, qunatity: dummyData[item].qunatity)
                        }
                        .onDelete(perform: delete)
                }
                
                Spacer()
            }
            
            VStack{
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("PAY $898.33")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                })
                .frame(width: UIScreen.main.bounds.width / 1.3 ,height: 50)
                .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(10)
                .shadow(color: .black, radius: 40, x: 0, y: -40)
            }
        }
    }
}

struct CartScreen_Previews: PreviewProvider {
    static var previews: some View {
        CartScreen()
    }
}

func delete(at indexes: IndexSet){
    if let first = indexes.first{
        dummyData.remove(at: first)
    }
}

struct CartItems: View {
    var imageName : String
    var itemName: String
    var price : String
    var size: String
    var qunatity: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 30){
            Image(imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5){
                Text(itemName)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Text("$"+price)
                    .foregroundColor(.yellow)
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                
                Text("Size:" + size)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                
                Text("Quantity:" + qunatity)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.regular)
            }
            Spacer()
        }
        .padding(.horizontal)
        .frame(width: UIScreen.main.bounds.width)
    }
}

