//
//  OnBoardingScreenView.swift
//  Shopping App In SwiftUI
//
//  Created by mac on 8/28/24.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationStack{
//            Text("sain")
            
            VStack(spacing: 30){
                Spacer()
                Image("woman-drinking-fresh-fruit-juice")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Order Your Favorite Foods")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                    
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.green.opacity(0.5))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10){
                                Text("Next")
//                                    .foregroundColor(Color.black)
                                    .font(.title)
                                    .fontWeight(.bold)
                                Image(systemName: "chevron.right")
                            }
                            .foregroundColor(Color.black)

                        )
                }
                Spacer()

                
                
            }
            .navigationBarHidden(true)
        }
    }
}

struct OnBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreenView()
    }
}
