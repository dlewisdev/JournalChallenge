//
//  PhotoView.swift
//  Journal
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

struct PhotoView: View {
    @Binding var isShowing: Bool
    @Binding var photo: String
    
    var body: some View {
        ZStack {
            Image(photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button {
                isShowing = false
            } label: {
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "x.circle")
                            .scaleEffect(2)
                            .padding()
                    }
                    Spacer()
                }
            }
            .buttonStyle(.plain)
        }
    }
}

#Preview {
    PhotoView(isShowing: .constant(true), photo: .constant("journal"))
}
