//
//  🍑.swift
//  🍑太郎
//
//  Created by ryoto.maeda on 2016/10/24.
//  Copyright © 2016年 ryoto.maeda. All rights reserved.
//

import Foundation

protocol 中身 {
    var 俺とは: String { get }
    func 俺だよ() -> String
}

class 🐛の親 {
    func 子を生む() -> 🐛 {
        return 🐛(俺とは: "俺は虫だよ")
    }
}

class 🐛: 中身 {
    var 俺とは: String
    
    init(俺とは: String) {
        self.俺とは = 俺とは
    }
    
    func 俺だよ() -> String {
        return 俺とは
    }
}

class 🍑太郎の親 {
}

class 🍑太郎: 中身 {
    var 俺とは: String
    
    init() {
        self.俺とは = "🍑太郎だよ"
    }
    
    func 俺だよ() -> String {
        return self.俺とは
    }
}


class 🍑 {
    private let 🍑の中身: 中身
    
    init(🍑の中身: 中身) {
        self.🍑の中身 = 🍑の中身
    }
}

class 🍑の木 {

    let 🍑の木に救った親🐛 = 🐛の親()
    
    func 🍑を作る() -> 🍑 {
        
        let ランダムな数 = arc4random_uniform(10)
        let 🍑の中身: 中身
        
        switch ランダムな数 {
        case 0...9:
            🍑の中身 = 🐛を入れる()
        default:
            🍑の中身 = 🍑太郎を入れる()
        }
        
        return 🍑(🍑の中身: 🍑の中身)
    }
    
    private func 🐛を入れる() -> 🐛 {
        return self.🍑の木に救った親🐛.子を生む()
    }
    
    private func 🍑太郎を入れる() -> 🍑太郎 {
    }
}