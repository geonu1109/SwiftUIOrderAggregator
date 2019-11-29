//
//  Item.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import Foundation

struct Item: Identifiable {
    let id: UUID = .init()
    let name: String
    let options: [Option]
}
