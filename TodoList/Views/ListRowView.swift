//
//  ListRowView.swift
//  TodoList
//
//  Created by Caleb Gonzalez on 15/12/23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? Color(.green) : Color(.red))
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 9)
    }
}

struct ListRowView_Preview: PreviewProvider {
    static var item1 = ItemModel(title: "First example", isCompleted: false)
    static var previews: some View {
        ListRowView(item: item1)
            .previewLayout(.sizeThatFits)
    }
        
}
