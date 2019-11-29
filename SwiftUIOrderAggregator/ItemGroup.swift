//
//  ItemGroup.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import Foundation

struct ItemGroup: Identifiable {
    let id: UUID = .init()
    let name: String
    var items: [Item]
}
