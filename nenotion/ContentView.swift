//
//  ContentView.swift
//  nenotion
//
//  Created by USER on 09.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""

    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    SearchBar(searchText: $searchText)

                    List {
                        Section(header: Text("Избранное")) {
                            ForEach(0..<3) { _ in
                                NavigationLink(destination: Text("Текст избранной заметки")) {
                                    Text("Избранная заметка")
                                }
                            }
                        }

                        Section(header: Text("Заметки")) {
                            ForEach(0..<5) { _ in
                                NavigationLink(destination: Text("Текст заметки")) {
                                    Text("Заметка")
                                }
                            }
                        }
                    }
                    .navigationTitle("NeNotion")
                }
                .background(Color(UIColor.systemGray6))
            }
            .tabItem {
                Image(systemName: "list.bullet")
            }

            NavigationView {
                Text("Новая заметка")
            }
            .tabItem {
                Image(systemName: "square.and.pencil")
            }
            
            NavigationView {
            }
            .tabItem {
                Image(systemName: "person")
            }
        }
        .accentColor(.black)
    }
}

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

#Preview {
    ContentView()
}
