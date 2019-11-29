//
//  Option.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import SwiftUI

struct Option: CustomStringConvertible {
    static let iced: Option = .init(imageModel: .init(systemName: "snow", foregroundColor: .blue, imageScale: .small), description: "차가운")
    static let hot: Option = .init(imageModel: .init(systemName: "flame", foregroundColor: .red, imageScale: .small), description: "뜨거운")
    
    let imageModel: ImageModel
    let description: String
}
