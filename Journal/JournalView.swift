//
//  JournalView.swift
//  Journal
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

struct JournalView: View {
    @State var isShowingSheet: Bool = false
    @State var isShowingPhoto: Bool = false
    @State var selectedPhoto: String = ""
    @State var entries: [Entry] = [Entry]()
    @Binding var isPublic: Bool
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(), GridItem()]) {
                ForEach(entries) { entry in
                    ZStack {
                        
                        Image(entry.photo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .onTapGesture {
                                if isPublic {
                                    selectedPhoto = entry.photo
                                    isShowingPhoto = true
                                }
                            }
                        
                        if !isPublic {
                            Image(systemName: "lock.fill")
                                .foregroundColor(.gray)
                                .scaleEffect(5)
                        }
                        
                    }
                    
                }
            }
            Spacer()
            Button {
                isShowingSheet = true
            } label: {
                Text("Add Entry")
            }
        }
        .sheet(isPresented: $isShowingSheet) {
            JournalEntryView(entries: $entries, isShowingSheet: $isShowingSheet)
        }
        .sheet(isPresented: $isShowingPhoto) {
            PhotoView(isShowing: $isShowingPhoto, photo: $selectedPhoto)
        }
    }
}

#Preview {
    JournalView(entries: [Entry(text: "Sample"), Entry(text: "Sample 2")], isPublic: .constant(false))
}
