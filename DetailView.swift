//
//  DetailView.swift
//  LikeLion230423
//
//  Created by yeon I on 2023/04/23.
//

import SwiftUI

struct DetailView: View {
    var coffee : Coffee = Coffee (
        name:"아메리카노",
        description:"카페 아메리카노(이탈리아어: Caffè Americano, 스페인어: Café Americano) 또는 단순히 아메리카노(Americano)는 에스프레소를 뜨거운 물로 농도를 희석하여 마시는 커피 음료의 한 종류이다. 그 농도는 일반적인 드립 커피와 비슷하지만 풍미(風味)는 다르다. 아메리카노의 농도는 에스프레소의 '샷' 수와, 더해지는 물의 양에 따라 달라진다. 이탈리아어인 'Caffè Americano'를 영역(英譯)하면 'American coffee'이지만, 영미권에서도 이탈리어 표현 그대로 쓴다. 또한, 'Americano'에서의 'America'는 미국을 뜻하며, 'no' 부분은 이탈리아어로서 '~처럼'이라는 뜻이 있다.",
        imageName:"Caffe_americano",
        link:"https://ko.wikipedia.org/wiki/%EC%B9%B4%ED%8E%98_%EC%95%84%EB%A9%94%EB%A6%AC%EC%B9%B4%EB%85%B8")
    
    
    var body: some View{
        Form {
            Section {
                Image("\(coffee.imageName)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("\(coffee.description)")
            }
            Section {
                Button {
                    let url = URL(string: "\(coffee.link)")!
                    UIApplication.shared.open(url)
                } label: {
                    Text("Read more Wikipedia")
                }
                
            }
        }
        .navigationTitle("\(coffee.name)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView()
        }
    }
}
