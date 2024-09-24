//
//  NoteCard.swift
//  Lyra
//
//  Created by ryugel on 21/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//

import Foundation
import SwiftUI

struct NoteCard: View {
    @State var title: String
    @State var content: String
    @State var created: Date
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(LyraTheming.Color.quinary.color)
                .frame(width: 385, height: 385)
                .cornerRadius(5)

            VStack {
                Text(title)
                    .font(.title)
                    .padding()
                    .lineLimit(2)

                Spacer()

                Text(content)
                    .font(.headline)

                Spacer()

                HStack {
                    Text(created.formatted())
                        .font(.caption)
                        .foregroundColor(LyraTheming.Color.secondary.color)
                    Spacer()
                    Tools().editButton
                        .padding()
                        .foregroundColor(LyraTheming.Color.tertiary.color)
                }
            }
            .frame(width: 365, height: 365)
        }
    }
}

#Preview {
    NoteCard(title: Note.defaultValue.title, content: Note.defaultValue.content, created: Note.defaultValue.created)
}
