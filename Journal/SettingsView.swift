//
//  SettingsView.swift
//  Journal
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

struct SettingsView: View {
    @Binding var isPublic: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Toggle(isOn: $isPublic) {
                Text(isPublic ? "Public" : "Private")
            }
            .padding()
            .toggleStyle(.switch)
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    SettingsView(isPublic: .constant(true))
}
