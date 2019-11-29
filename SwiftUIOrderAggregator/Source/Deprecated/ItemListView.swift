//
//  ItemListView.swift
//  SwiftUIOrderAggregator
//
//  Created by 전건우 on 2019/11/20.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import SwiftUI

struct ItemListView: View {
    @State var itemGroups: [ItemGroup]
    @State var currentItem: Item! = nil
    @State var actionSheetIsPresenting: Bool = false
    @State var alertIsPresenting: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.itemGroups) { (itemGroup) in
                    Section(header: Text(itemGroup.name)) {
                        ForEach(itemGroup.items) { (item) in
                            Button(action: {
                                self.currentItem = item
                                if item.options.isEmpty {
                                    self.alertIsPresenting = true
                                }
                                else {
                                    self.actionSheetIsPresenting = true
                                }
                            }) {
                                Text(item.name)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("메뉴 목록"))
        }
        .alert(isPresented: self.$alertIsPresenting) {
            Alert(title: Text("선택 확인"), message: Text("\(self.currentItem.name)을/를 선택 목록에 추가하시겠습니까?"), primaryButton: .default(Text("확인"), action: nil), secondaryButton: .cancel(Text("취소")))
        }
        .actionSheet(isPresented: self.$actionSheetIsPresenting) {
            ActionSheet(
                title: Text("옵션 선택"),
                message: Text("\(self.currentItem.name)의 옵션을 선택하세요."),
                buttons: self.currentItem.options.map { (option) in
                    return ActionSheet.Button.default(Text(option.description), action: nil)
                } + [.cancel(Text("취소"))]
            )
        }
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView(itemGroups: [])
    }
}
