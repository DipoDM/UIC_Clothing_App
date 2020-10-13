//
//  ScreenOne.swift
//  UIC_Clothing_App
//
//  Created by ODM on 10/10/20.
//

import SwiftUI

struct ScreenOne: View {
    var body: some View {
        ZStack {
            Image("image4")
                .resizable()
            
            VStack {
                Spacer()
                
                BottomView(isPresent: false)
                    .frame(height: UIScreen.main.bounds.height / 3)
                    .clipShape(CustomShape(corner: [.topRight, .topLeft], radii: 30))
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ScreenOne()
    }
}


struct CustomShape: Shape {
    var corner: UIRectCorner
    var radii: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}

struct BottomView: View {
    @State var isPresent : Bool
    var body: some View{
        ZStack {
            Color.black.opacity(0.84)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("The Best of Fashion.")
                    .foregroundColor(.white)
                    .font(.system(size: 35))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.vertical)
                
                Text("All the best Brands andFashinwear, at one single place. Sign Up to explore!")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                    .padding()
                
                HStack{
                    Spacer()

                        Text("SIGN UP")
                            .foregroundColor(.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: 120, height: 50)
                            .background(Color(#colorLiteral(red: 1, green: 0.527668583, blue: 0.2626455761, alpha: 1)))
                            .cornerRadius(10)
                            .onTapGesture{
                                isPresent.toggle()
                            }
                            .fullScreenCover(isPresented: $isPresent){
                                ScreenTwo()
                            }                            
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

//struct BottomView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomView()
//    }
//}
