//
//  ContentView.swift
//  Lyra
//
//  Created by ryugel on 21/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: LyraTheming.Size.large.size) {
                    Text("Hey Lyra!")
                        .font(.system(size: LyraTheming.Size.medium.size))
                        .foregroundStyle(LyraTheming.Color.quinary.color)
                }
                .padding()
    }
}

#Preview {
    ContentView()
}
