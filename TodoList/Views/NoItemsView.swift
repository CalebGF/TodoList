//
//  NoItemsView.swift
//  TodoList
//
//  Created by Caleb Gonzalez on 19/12/23.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no titles!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Please start adding some items to the list, you can press this button to start the first one!")
                    
                NavigationLink(
                    destination: AddItemView(),
                    label: {
                        Text("Add something 🤓")
                            .foregroundStyle(Color(.white))
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    })
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    NavigationStack {
        NoItemsView()
            .navigationTitle("Title")
    }
}
