//
//  Coffee.swift
//  LikeLion230423
//
//  Created by yeon I on 2023/04/23.
//

import Foundation
struct coffee :Identifiable {
    let name :String //한글
    let imageName :String //파일명과 일치
    let description :String //상세설명 
    var id :String {
        self.name
    }
    
}
