//
//  DetailView.swift
//  Shopping App In SwiftUI
//
//  Created by mac on 8/29/24.
//

import SwiftUI

struct RoundedCornerShape: Shape{
    // path is a Protocol.
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
    
    let corners: UIRectCorner
    let radius : CGFloat
}

struct Counter: View{
    
    @State var count = 0
    
    var body: some View {
        HStack(spacing: 25){
            Button {
                count += 1
            } label: {
                Image(systemName: "plus")
            }
            Text("\(count)")

            Button {
                if count != 0{
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
            }
//            Text("\(count)")
        }
        .foregroundColor(Color.black)
        .frame(width: 130, height: 40)
        .background(Color("1").opacity(0.60))
        .cornerRadius(12)
        .padding()
    }
}

struct DetailView: View {
    
    @State var fruit : fruitTitle
    
    var body: some View {
        VStack(alignment: .leading,  spacing: 25){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape.init(corners: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
//                .edgesIgnoringSafeArea(.all)
//            Spacer()
                .shadow(color: Color.gray, radius: 5,x:5 , y: 5)
                .overlay(
                    Image("\(fruit.rawValue)")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .shadow(color: Color.gray, radius: 5, x: 5, y: 5)
                    
                )
            Spacer()
            Text("\(fruit.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well - being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            
            HStack(){
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("7"))
                    .opacity(0.30)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 50))
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading, spacing: 5){
                    Text("Delivery Time")
                    Text("25-30 Min")
                    
                }
                
            }
            .padding(.horizontal)
            HStack{
                Text("$1.99")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                Counter()
            }
            
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .cornerRadius(15)
                .shadow(color: Color.gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Text("Add to cart")
                        .font(.system(.title3))
                        .fontWeight(.medium)
                )
                .padding(.horizontal)
            
            
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(fruit: .orange)
    }
}
