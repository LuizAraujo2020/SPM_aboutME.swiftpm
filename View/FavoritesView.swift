//
//  FavoritesView.swift
//  
//
//  Created by Luiz Araujo on 11/04/22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Hobbies")
                .font(.title2)
        
            HStack {
                ForEach(information.hobbies, id: \.self) {
                    hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 60)
                }
                .padding()
            }
            .padding()
            
            Text("Foods")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
