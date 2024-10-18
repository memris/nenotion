//
//  Note.swift
//  nenotion
//
//  Created by USER on 18.10.2024.
//

import Foundation
struct Note: Identifiable {
    let id = UUID()
    var title: String
    var content: String
}
