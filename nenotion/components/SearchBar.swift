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
            .background(Theme.whiteText)
            .cornerRadius(10)
            .padding(.horizontal)
            .foregroundColor(Theme.grayText)
    }
}
