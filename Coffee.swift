//
//  Coffee.swift
//  LikeLion230423
//
//  Created by yeon I on 2023/04/23.
//

import Foundation

struct Coffee : Identifiable {
    var id : UUID = UUID()
    var name : String //한글
    var description :String //상세설명
    var imageName :String //파일명과 일치
    var link : String
    
    
    var preDescription : String {
        return String(description.prefix(70))
 
    }
}
