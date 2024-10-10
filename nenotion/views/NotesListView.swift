//
//  ContentView.swift
//  nenotion
//
//  Created by USER on 09.10.2024.
//

import SwiftUI

struct NotesListView: View {
    @State var searchText = ""

    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    SearchBar(searchText: $searchText)
                        .font(Theme.bodyFont)

                    List {
                        Section(header: Text("Избранное").font(Theme.titleFont)) {
                            ForEach(0..<3) { _ in
                                NavigationLink(destination: Text("Текст избранной заметки")) {
                                    Text("Избранная заметка").font(Theme.bodyFont)
                                }
                            }
                        }

                        Section(header: Text("Заметки").font(Theme.titleFont)) {
                            ForEach(0..<5) { _ in
                                NavigationLink(destination: Text("Текст заметки")) {
                                    Text("Заметка").font(Theme.bodyFont)
                                }
                            }
                        }
                    }
                    .navigationTitle("NeNotion")
                    .background(Theme.backgroundColor)
                }
                .background(Theme.backgroundColor)
            }
            .tabItem {
                Image(systemName: "list.bullet")
            }

            NavigationView {
                Text("Новая заметка").font(Theme.bodyFont)
            }
            .tabItem {
                Image(systemName: "square.and.pencil")
            }

            NavigationView {
                Text("Настройки профиля").font(Theme.bodyFont)
            }
            .tabItem {
                Image(systemName: "person")
            }
        }
        .accentColor(Theme.accentColor)
    }
}
#Preview {
    NotesListView()
}
