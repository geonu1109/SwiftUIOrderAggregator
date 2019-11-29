//
//  ContentView.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int = 0
    
    var body: some View {
        OrderListView(orderLineGroups: ItemGroupRepository.shared.findAll().map(OrderLineGroup.init))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
