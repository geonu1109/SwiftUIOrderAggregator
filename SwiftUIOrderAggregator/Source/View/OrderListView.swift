//
//  OrderListView.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    @State var orderLineGroups: [OrderLineGroup]
    @State var alertIsPresented: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: .zero) {
                List {
                    ForEach(self.orderLineGroups.indices) { (sectionIndex) in
                        Section(header: Text(self.orderLineGroups[sectionIndex].name)) {
                            ForEach(self.orderLineGroups[sectionIndex].orderLines.indices) { (rowIndex) in
                                OrderLineView(orderLine: self.$orderLineGroups[sectionIndex].orderLines[rowIndex])
                                    .frame(height: 45)
                            }
                        }
                    }
                }
                Divider()
                HStack {
                    Spacer()
                    Text("총 \(self.orderLineGroups.reduce(0) { $0 + $1.countAll }) 잔")
                        .font(.headline)
                }
                .padding()
            }
            .navigationBarTitle("주문집계기")
            .navigationBarItems(trailing: Button(action: {
                self.alertIsPresented = true
            }, label: {
                Image(systemName: "arrow.clockwise")
                    .foregroundColor(.primary)
                    .imageScale(.medium)
                    .padding()
            }))
        }
        .alert(isPresented: self.$alertIsPresented) { () -> Alert in
            Alert(title: Text("초기화 확인"), message: Text("선택된 항목을 모두 초기화하시겠습니까?"), primaryButton: .cancel(Text("취소")), secondaryButton: .default(Text("확인"), action: self.refresh))
        }
    }
    
    func refresh() {
        self.orderLineGroups.indices.forEach { (sectionIndex) in
            self.orderLineGroups[sectionIndex].orderLines.indices.forEach { (rowIndex) in
                self.orderLineGroups[sectionIndex].orderLines[rowIndex].count = 0
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderLineGroups: [])
    }
}
