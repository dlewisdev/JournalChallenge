//
//  JournalEntryView.swift
//  Journal
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

struct JournalEntryView: View {
    @State var entry: String = ""
    @Binding var entries: [Entry]
    @Binding var isShowingSheet: Bool
    
    var body: some View {
        TextField("Journal Entry", text: $entry)
            .padding()
            .overlay(
                Rectangle()
                    .stroke(.gray)
            )
            .padding()
        
        Button {
            let newEntry = Entry(text: entry)
            entries.append(newEntry)
            isShowingSheet = false
        } label: {
            Text("Add Entry")
        }
    }
}

#Preview {
    JournalEntryView(entry: "", entries: .constant([Entry(text: "Sample Entry")]), isShowingSheet: .constant(true))
}
