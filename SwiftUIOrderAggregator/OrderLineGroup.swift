//
//  OrderLineGroup.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import Foundation

struct OrderLineGroup: Identifiable {
    let id: UUID
    let name: String
    var orderLines: [OrderLine]
    
    var countAll: Int {
        orderLines.reduce(0) { $0 + $1.count }
    }
    
    init(from itemGroup: ItemGroup) {
        self.id = itemGroup.id
        self.name = itemGroup.name
        self.orderLines = itemGroup.items.flatMap { (item) -> [OrderLine] in
            if item.options.isEmpty {
                return [OrderLine(from: item, option: nil)]
            }
            else {
                return item.options.map { (option) in
                    return OrderLine(from: item, option: option)
                }
            }
        }
    }
}
