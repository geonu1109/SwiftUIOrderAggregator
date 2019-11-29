//
//  ItemGroupRepository.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import SwiftUI

final class ItemGroupRepository {
    static let shared: ItemGroupRepository = .init()
    
    private init() {}
    
    func findAll() -> [ItemGroup] {
        return [
            .init(name: "커피", items: [
                .init(name: "아메리카노(마일드)", options: [.hot, .iced]),
                .init(name: "아메리카노(다크)", options: [.hot, .iced])
            ]),
            .init(name: "차", items: [
                .init(name: "우유", options: [.hot, .iced]),
                .init(name: "아이스티", options: []),
                .init(name: "얼그레이", options: [.hot, .iced]),
                .init(name: "유자차", options: [.hot, .iced]),
                .init(name: "대추차", options: [.hot, .iced]),
                .init(name: "캐모마일", options: [.hot, .iced]),
                .init(name: "루이보스", options: [.hot, .iced])
            ])
        ]
    }
}
