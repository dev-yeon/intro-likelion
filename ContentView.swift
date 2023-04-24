//
//  ContentView.swift
//  LikeLion230423
//
//  Created by yeon on 2023/04/23.
//

import SwiftUI

struct ContentView: View {
    
    let coffees :[coffee] = [
        
        .init(name:"아메리카노", imageName:"Caffe_americano", description: "카페 아메리카노(이탈리아어: Caffè Americano, 스페인어: Café Americano) 또는 단순히 아메리카노(Americano)는 에스프레소를 뜨거운 물로 농도를 희석하여 마시는 커피 음료의 한 종류이다. 그 농도는 일반적인 드립 커피와 비슷하지만 풍미(風味)는 다르다. 아메리카노의 농도는 에스프레소의 '샷' 수와, 더해지는 물의 양에 따라 달라진다. 이탈리아어인 'Caffè Americano'를 영역(英譯)하면 'American coffee'이지만, 영미권에서도 이탈리어 표현 그대로 쓴다. 또한, 'Americano'에서의 'America'는 미국을 뜻하며, 'no' 부분은 이탈리아어로서 '~처럼'이라는 뜻이 있다."),
        
        .init(name:"카페 모카", imageName:"Caffe_mocha", description: "카페 모카(이탈리아어: caffè mocha, café mocha) 또는 모카치노(이탈리아어: mocaccino)는 에스프레소, 우유에 초콜릿 시럽을 넣은 커피 음료이다. 기호에 따라 크림을 추가하기도 한다. 카페모카라는 이름은 예멘의 모카에서 수입한 커피콩으로 만들었기 때문에 붙여진 이름이다. 예멘의 모카에서 만들어진 커피콩은 예로부터 특유의 초콜릿 향이 난다고 하여 그 때의 향을 되살리기 위해 초콜릿 시럽을 첨가한다고 알려져 있다."),
        
        .init(name:"카푸치노", imageName:"Cappuccino", description: "카푸치노(이탈리아어: cappuccino)는 에스프레소, 뜨거운 우유, 그리고 우유 거품을 재료로 만드는 이탈리아의 커피 음료로서, 여기에 코코아 가루나 계피 가루를 뿌려 먹기도 한다. 카푸치노는 카페 라테에 비해 우유의 양이 훨씬 적으며, 전체의 양은 약 150~180 ml가 되도록 한다. 카푸치노는 전통적으로 자기(瓷器)로 된 컵에 담겨 서빙되는데, 이는 자기가 유리나 종이보다 열을 더 잘 보존하기 때문이다."),
        
        .init(name:"콜드 브루 커피", imageName:"Cold_brew_coffee", description: "콜드 브루 커피(영어: cold brew coffee)는 찬물로 추출하는 커피를 말한다. 뜨거운 물로 우려내는 일반적인 커피가 몇 분 만에 커피를 뽑아낼 수 있는 것과 달리 찬물로 추출하는 커피는 적게는 30분에서 많게는 12시간까지 오랜 시간에 걸쳐 우려낸다.찬물에 우려내는 커피를 더치 커피(일본어식 영어: Dutch coffee, 일본어: ダッチ・コーヒー)라고 부르기 시작한 곳은 일본이다.일본의 '더치커피'는 도시 전설과 같은 네덜란드 선원 이야기와 함께 대한민국으로 전해졌다. 이 외의 지역에서는 더치커피보다는 콜드 브루 쪽이 일반적인 명칭이다. 이 때문에 서구권에선 일본식 커피, 쿄토식 커피와 같은 명칭으로 불리기도 한다."),
        
        .init(name:"에스프레소 콘 파냐", imageName:"Espresso_con_panna", description: "카페 콘 판나(이탈리아어: caffè con panna) 또는 에스프레소 콘 판나(이탈리아어: espresso con panna)는 크림을 올린 에스프레소이다. 데미타스에 낸다."),
        
        .init(name:"에스프레소", imageName:"espresso", description: "에스프레소 또는 카페 에스프레소(이탈리아어: caffè espresso)는 고압·고온 하의 물을 미세하게 분쇄한 커피 가루에 가해 추출해내는 고농축 커피의 일종이다. 초창기 에스프레소는 20세기 초반 이탈리아 밀라노 지역에서 개발되었다. 당시 에스프레소는 순수하게 수증기의 압력으로 추출되었다. 1940년대 중반 스프링 피스톤 레버 머신이 개발되어, 오늘날 우리가 알고 있는 형태의 에스프레소 커피가 제조되기 시작하였다. 오늘날에는 대개 대기압의 9~15배의 압력을 가해 에스프레소를 추출한다.에스프레소의 가장 큰 특징은 드립 커피(거름종이에 내리는 커피)보다 농도가 짙다는 것이다. 같은 부피를 놓고 비교해 봤을 때 드립 커피보다 일정 부피 안에 용해된 고형체의 양이 많다. 그러나 흔히 생각하는 것과는 달리 카페인의 함유량이 적은데, 커피를 빠른 시간에 뽑아내기 때문이며, 에스프레소용 커피 콩이 드립용보다 카페인이 낮은 경우가 대부분이기 때문이다. 이탈리아어의 espresso의 의미 역시 '고속의', '빠른'의 형용사이다. 에스프레소용 커피는 주로 보통 내려 먹는 커피보다 강하게 볶은(한자어:강배전) 커피를 쓴다. 마실 때는 향을 먼저 맡고 크레마를 맛 본 다음 두 번에 나누어 마시거나 단번에 마시는 것이 좋다. 기호에 따라 레몬을 넣어 마시기도 한다."),
        
        .init(name:"카페 라떼", imageName:"latte", description: "카페 라떼(이탈리아어: caffè latte)는 에스프레소에 뜨거운 우유를 곁들인 커피 가운데 하나이다. 카페 라테는 전 세계에서 찾아볼 수 있는 커피의 한 종류로 카푸치노, 에스프레소와 함께 가장 흔한 메뉴이기도 하다. ‘카페 라테’는 이탈리아어로 ‘우유 커피’를 뜻한다. 프랑스어나 스페인어에서는 그대로 우유를 곁들인 커피라는 문어로, 카페 라떼를 옮겨 적는다. 이탈리아에서 카페 라테는 아침에만 먹는 음료이다. 꼭 정해진 것은 아니지만 커피를 증류해서 컵에 우려낸 다음에 데운 우유를 첨가한다. 이탈리아 외의 나라에서 에스프레소에 따뜻한 우유를 1:2 또는 1:3의 비율로 섞은 것으로 우유가 5mm정도 맨 위에 층을 이루고 있는 것이 특징이며 카푸치노와 흡사하다. 다만 두 종류의 차이는 우유와 에스프레소, 거품의 차이이다. 변종에는 초콜릿 맛의 모카가 포함되거나, 커피를 다른 종류의 우유 혹은 마살라 등으로 대체하기도 한다. 바닐라라테, 라테 마키아토 등 첨가물을 넣은 베리에이션 커피도 있다."),
        

       
        .init(name:"샤케 라또", imageName:"Shakerato", description: "카페 샤케라토(이탈리아어: caffè shakerato)는 리스트레또와 얼음을 이용하여 만든 커피 음료이다. 이탈리아식 커피 음료의 일종이다."),
    ]
    
    var body: some View {
        NavigationView {
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
    
    
    
}
