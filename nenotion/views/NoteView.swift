//
//  NoteView.swift
//  nenotion
//
//  Created by USER on 11.10.2024.
//

import SwiftUI

struct NoteView: View {
  
    @State private var title: String = ""
    @State private var content: String = ""
    var onSave: (Note) -> Void
    var isNewNote: Bool

    var body: some View {
        VStack {
            TextEditor(text: $title)
                .font(Theme.titleFont)
                .foregroundColor(title.isEmpty ? .gray : .primary)
                .padding()
                .cornerRadius(10)
                .frame(height: 70)
                .onTapGesture {
                    if title == "Заголовок" {
                        title = ""
                    }
                }

            TextEditor(text: $content)
                .font(Theme.bodyFont)
                .foregroundColor(content.isEmpty ? .gray : .primary)
                .padding()
                .cornerRadius(10)
                .onTapGesture {
                    if content == "Содержимое" {
                        content = ""
                    }
                }
        }
        .padding()
        .onAppear {
            if isNewNote {
                title = "Заголовок"
                content = "Содержимое"
            }
        }
        .onDisappear {
            if !title.isEmpty && title != "Заголовок" && !content.isEmpty && content != "Содержимое" {
                let newNote = Note(title: title, content: content)
                onSave(newNote)
            }
        }
    }
}

#Preview {
    NavigationView {
        NoteView (onSave: { _ in }, isNewNote: true)
    }
}
