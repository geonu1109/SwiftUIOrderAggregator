//
//  ImageModel.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import SwiftUI

struct ImageModel {
    let systemName: String
    let foregroundColor: Color
    let imageScale: Image.Scale
    
    var image: some View {
        return Image(systemName: self.systemName)
            .foregroundColor(self.foregroundColor)
            .imageScale(self.imageScale)
    }
}
