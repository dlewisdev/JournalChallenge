//
//  ContentView.swift
//  Journal
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

struct MainView: View {
    @Binding var isPublic: Bool
    
    var body: some View {
        TabView {
            JournalView(isPublic: $isPublic)
                .tabItem {
                    VStack {
                        Image(systemName: "book.pages")
                        Text("Journal")
                    }
                }
            
            SettingsView(isPublic: $isPublic)
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Settings  ")
                    }
                }
        }
    }
}

#Preview {
    MainView(isPublic: .constant(true))
}
