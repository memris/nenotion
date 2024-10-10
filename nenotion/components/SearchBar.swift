//
//  SearchBar.swift
//  nenotion
//
//  Created by USER on 10.10.2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String

    var body: some View {
        TextField("Найти", text: $searchText)
            .padding(8)
            .background(Color(UIColor.systemGray5))
            .cornerRadius(10)
            .padding(.horizontal)
    }
}
