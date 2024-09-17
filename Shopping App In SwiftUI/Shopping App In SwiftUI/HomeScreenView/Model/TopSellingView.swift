//
//  TopSellingView.swift
//  Shopping App In SwiftUI
//
//  Created by mac on 8/29/24.
//

import SwiftUI

struct TopSellingView: View {
    let images: [FruitModel] = [
        .init(id: 1, title: .orange, image: "orange", price: "3.44$", color: "2"),
        .init(id: 2, title: .apple, image: "apple", price: "2.44$", color: "3"),
        .init(id: 3, title: .apricot, image: "apricot", price: "5.90$", color: "4"),
        .init(id: 4, title: .avocado, image: "avocado", price: "10$", color: "5"),
        .init(id: 5, title: .banana, image: "banana", price: "3.10$", color: "6"),
        .init(id: 6, title: .blackberry, image: "blackberry", price: "4.20$", color: "6"),
        .init(id: 7, title: .cherry, image: "cherry", price: "8.20$", color: "5"),
        .init(id: 8, title: .dragonfruit, image: "dragon-fruit", price: "5.80$", color: "4"),
        .init(id: 9, title: .grapes, image: "grapes", price: "4.90$", color: "3"),
        .init(id: 10, title: .grapes, image: "green-pear", price: "5.90$", color: "2"),
        .init(id: 11, title: .kiwi, image: "kiwi", price: "6.10$", color: "1"),
        .init(id: 12, title: .lemon, image: "lemon", price: "3.80$", color: "2"),
        .init(id: 13, title: .mango, image: "mango", price: "6.10$", color: "3"),
        .init(id: 14, title: .orange, image: "muskmelon", price: "4.20$", color: "4"),
        .init(id: 15, title: .papaya, image: "papaya", price: "2.20$", color: "5"),
        .init(id: 16, title: .pineapple, image: "pineapple", price: "6.10$", color: "6"),
        .init(id: 17, title: .plum, image: "plum", price: "10.10$", color: "2"),
        .init(id: 18, title: .rasperry, image: "raspberry", price: "20.15$", color: "1"),
        .init(id: 19, title: .strawberry, image: "strawberry", price: "5.30$", color: "6")
        
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 20){
                ForEach(images, id : \.id){ post in
                    NavigationLink(destination: DetailView(fruit: post.title)) {
                        FruitCartView(fruits: post)
                            .shadow(radius: 5, x: 5, y: 5)
                    }
                    
                }
                
                
            }
        }
        
    }
}

struct TopSellingView_Previews: PreviewProvider {
    static var previews: some View {
        TopSellingView()
    }
}
