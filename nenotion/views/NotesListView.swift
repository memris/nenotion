//
//  ContentView.swift
//  nenotion
//
//  Created by USER on 09.10.2024.
//

import SwiftUI

struct NotesListView: View {
    @State var searchText = ""
    @State private var notes: [Note] = []

    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    SearchBar(searchText: $searchText)
                        .font(Theme.bodyFont)

                    List {
                        Section(header: Text("Избранное").font(Theme.titleFont)) {
                        }

                        Section(header: Text("Заметки").font(Theme.titleFont)) {
                            ForEach(notes) { note in
                                NavigationLink(destination: Text(note.content)) {
                                    VStack(alignment: .leading) {
                                        Text(note.title).font(Theme.titleFont)
                                        Text(note.content.prefix(100) + "...").font(Theme.bodyFont)
                                    }
                                }
                            }
                        }
                    }
                    .navigationTitle("NeNotion")
                }
                .background(Theme.backgroundColor)
            }
            .tabItem {
                Image(systemName: "list.bullet")
            }

            NavigationView {
                NoteView(onSave: {
                    newNote in notes.append(newNote)
                }, isNewNote: true)
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
