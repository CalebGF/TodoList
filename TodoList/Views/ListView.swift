//
//  ListView.swift
//  TodoList
//
//  Created by Caleb Gonzalez on 15/12/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "Item 1",
        "ITem 2",
        "ITem 3"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("Todo List 📝")
    }
}

#Preview {
    NavigationStack{
        ListView()
    }
}


