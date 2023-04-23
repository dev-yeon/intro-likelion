//
//  DetailView.swift
//  LikeLion230423
//
//  Created by yeon I on 2023/04/23.
//

import SwiftUI

struct DetailView: View {
    let coffee :coffee
    
    var body: some View {
        VStack{
            Image(coffee.imageName)
                .resizable()
                .scaledToFit()
            Text(coffee.name)
                .font(.largeTitle)
            
            Text(coffee.description)
            Link(destination: URL(string: "https://www.naver.com/")!){
                Text("웹에서 자세히 보기 ", systemImage: "globe")
            }
        }
    }
}

struct DetailView_Previews:PreviewProvider{
    static var previews: some View{
        
    }
}
