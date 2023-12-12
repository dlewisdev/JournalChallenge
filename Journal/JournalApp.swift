//
//  JournalApp.swift
//  Journal
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

@main
struct JournalApp: App {
    @State var isPublic: Bool = true
    
    var body: some Scene {
        WindowGroup {
            MainView(isPublic: $isPublic)
        }
    }
}
