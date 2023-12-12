//
//  Entry.swift
//  Journal
//
//  Created by Danielle Lewis on 12/12/23.
//

import Foundation

struct Entry: Identifiable {
    var id: UUID = UUID()
    var text: String
    var photo: String = "journal"
}
