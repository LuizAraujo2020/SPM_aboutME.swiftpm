//
//  FunFactsView.swift
//  
//
//  Created by Luiz Araujo on 11/04/22.
//

import SwiftUI

struct FunFactsView: View {
    
    @State private var funFact = ""
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)
            
            Button("Show Random Fact") {
                funFact = information.funFacts.randomElement()!
            }
            .padding()
            .background(Color.cyan)
            .cornerRadius(15)
            .foregroundColor(Color.white)
        }
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
