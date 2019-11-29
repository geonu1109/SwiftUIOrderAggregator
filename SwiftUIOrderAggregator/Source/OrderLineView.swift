//
//  OrderLineView.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import SwiftUI

struct OrderLineView: View {
    @Binding var orderLine: OrderLine
    
    var body: some View {
        Stepper(value: $orderLine.count, in: 0...100) {
            HStack {
                VStack(spacing: 5) {
                    self.orderLine.option?.imageModel.image
                    (self.orderLine.option?.description).map(Text.init)?
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Text(self.orderLine.item.name)
                    .foregroundColor(.primary)
                    .font(.body)
                Spacer()
                Text("\(self.orderLine.count) 잔")
                    .foregroundColor(self.orderLine.count > 0 ? .primary : .secondary)
                    .font(.body)
            }
        }
    }
}

//struct OrderLineView_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderLineView(orderLine: .constant(.init(item: .init(name: "아메리카노", options: [.init(foregroundColor: .red, description: "뜨거운"), .init(foregroundColor: .blue, description: "차가운")]), option: "뜨거운")))
//            .previewLayout(.fixed(width: 360, height: 60))
//    }
//}
