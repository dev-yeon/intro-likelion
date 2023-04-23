//
//  ContentView.swift
//  LikeLion230423
//
//  Created by yeon on 2023/04/23.
//

import SwiftUI

struct ContentView: View {
    
    let coffees :[coffee] = [
        .init(name:"아이스 아메리카노", imageName:"", description: ""),
        .init(name:"자바 프라프치노", imageName:"", description: ""),
        .init(name:"라벤더 라떼", imageName:"", description: ""),
        .init(name:"모카", imageName:"", description: ""),
        .init(name:"돌체라떼", imageName:"", description: ""),
        .init(name:"아이스 아메리카노", imageName:"", description: ""),
    ]
    
    var body: some View {
        NavigationView {
            //swift ui -> ios 13
            //navigation stack - > ios  14 부터
            List(coffees, id: \.name){ coffee in
                NavigationLink(destination: DetailView(coffee: coffee)){
                    HStack {
                        VStack(alignment: .leading, spacing: 6){
                            Text(coffee.name)
                                .font(.subheadline)
                            
                            
                        }
                        Spacer()
                        
                        
                        Image(coffee.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        
                    }
                    .frame(height:120)
                }
                .navigationTitle("커피하우스")
            }
            
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    //cmd + +or -
    
    
}
