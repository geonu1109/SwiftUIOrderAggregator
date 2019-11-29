//
//  OrderLine.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import Foundation

struct OrderLine: Identifiable {
    let id: UUID = .init()
    let item: Item
    let option: Option?
    var count: Int = 0
    
    init(from item: Item, option: Option?) {
        self.item = item
        self.option = option
    }
}
