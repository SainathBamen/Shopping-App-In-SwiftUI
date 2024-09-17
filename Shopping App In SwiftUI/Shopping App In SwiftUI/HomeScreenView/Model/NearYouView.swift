//
//  NearYouView.swift
//  Shopping App In SwiftUI
//
//  Created by mac on 8/30/24.
//

import SwiftUI

struct NearYouView: View {
    let dataArray : [PlaceModel] = [
        .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 | 📍 1.5 km", image: "11"),
        .init(id: 1, name: "Super Store", time: "8:00 - 10:00", rating: "★ 4.6 |📍  1.7 km", image: "12"),
        .init(id: 2, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.5 | 📍 2.5 km", image: "13"),
        .init(id: 3, name: "Food 365 Valley", time: "8:00 - 8:00", rating: "★ 4.4 | 📍 2.0 km", image: "14"),
        .init(id: 4, name: "Food 365 Valley", time: "7:00 - 10:00", rating: "★ 4.0 | 📍 2.2 km", image: "15"),
        .init(id: 5, name: "Food 365 Valley", time: "9:00 - 7:00", rating: "★ 4.9 | 📍 3.5 km", image: "16")
    ]
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ForEach(dataArray, id: \.id){ item in
                HStack{
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color.gray.opacity(0.2))
                        .frame(width: 100, height: 100)
                        .overlay(Image(item.image )
                            .resizable())
                        .aspectRatio(contentMode: .fit)
                    VStack(alignment: .leading){
                        Text("\(item.name)")
                            .font(.system(.headline))
                        Text("\(item.time)")
                            .font(.system(.subheadline))
                            .foregroundColor(Color.gray)
                        Text("\(item.rating)")
                        
                    }
                }
            }
            
        }
        
    }
}

struct NearYouView_Previews: PreviewProvider {
    static var previews: some View {
        NearYouView()
    }
}
