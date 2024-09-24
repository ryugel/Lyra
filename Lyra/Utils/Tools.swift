//
//  Tools.swift
//  Lyra
//
//  Created by ryugel on 21/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//

import Foundation
import SwiftUI

struct Tools: View {
    var action: (() -> Void)?
    var body: some View {
        editButton
    }

    var editButton: some View {
        VStack {
            Button(action: {
                action?()
            }) {
                Circle()
                    .foregroundStyle(.black)
                    .overlay(
                        Image(systemName: "pencil")
                    )
                    .frame(width: LyraTheming.Size.huge.size, height: LyraTheming.Size.huge.size)
            }
            .buttonStyle(.plain)
        }
    }

    var plusButton: some View {
        Button(action: {
            action?()
        }) {
            Circle()
                .foregroundStyle(.black)
                .overlay(
                    Image(systemName: "plus")
                )
        }
        .buttonStyle(.plain)
    }

    var favoriteButton: some View {
        Button(action: {
            action?()
        }) {
            Circle()
                .foregroundStyle(.black)
                .overlay(
                    Image(systemName: "heart.fill")
                )
        }
        .frame(width: LyraTheming.Size.huge.size, height: LyraTheming.Size.huge.size)
        .buttonStyle(.plain)
    }
}

#Preview {
    Tools().editButton
}
