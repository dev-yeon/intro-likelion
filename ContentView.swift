//
//  ContentView.swift
//  LikeLion230423
//
//  Created by yeon on 2023/04/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var coffeeStore : CoffeeStore = CoffeeStore()
    
    var body : some View {
        NavigationStack {
            List(coffeeStore.coffees) {
            coffee in
                NavigationLink {
                    DetailView(coffee: coffee)
                } label: {
                    VStack(alignment: .leading){
                        Text("\(coffee.name)")
                            .font(.headline)
                        HStack(alignment: .top){
                            Text("\(coffee.preDescription)")
                            
                            Spacer()
                            
                            Image("\(coffee.imageName)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80)
                        }
                    }
                }
                
                
            }
        }
        
    }
}
