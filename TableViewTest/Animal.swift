//
//  Animal.swift
//  TableViewTest
//
//  Created by 橋本純一 on 2022/02/20.
//

import Foundation

struct Animal {
    private(set) public var nameJP : String
    private(set) public var nameEN : String
    private(set) public var imageName : String
    
    init(nameJP: String, nameEN: String, imageName: String) {
        self.nameJP = nameJP
        self.nameEN = nameEN
        self.imageName = imageName
    }
}
/*
 Animal 構造体に、nameJP、nameEN、imageName の 3 つの文字列のプロパティを定義しています。

 private(set) public として定義しているのは、値を読むのはどこからでも読めますが、値をセットするのはイニシャライザー init を使ってしかできないようにする為です。
 */
