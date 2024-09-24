//
//  Sidebar.swift
//  Lyra
//
//  Created by ryugel on 23/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//

import Foundation
import SwiftUI

struct Sidebar: View {
    @State var showing = false
    @State private var rotationAngle: Double = 0
    var body: some View {
        VStack {
            Text("Lyra")
                .font(LyraTheming.Font.headLine.font)
                .padding()

            VStack {
                Tools(action: {
                    withAnimation {
                        showing.toggle()
                        rotationAngle += 45
                    }
                }).plusButton
                    .rotationEffect(.degrees(rotationAngle))
                    .frame(width: LyraTheming.Size.extraExtraLarge.size, height: LyraTheming.Size.extraExtraLarge.size)
                    .padding()
                    .animation(.easeInOut(duration: 0.3), value: rotationAngle)

                ForEach(Array(ColorSelector.allCases.enumerated()), id: \.element.color) { index, color in
                    Button(action: {
                        print(color)
                    }) {
                        Circle()
                            .fill(color.color)
                            .frame(width: LyraTheming.Size.large.size, height: LyraTheming.Size.large.size)

                    }
                    .padding(.bottom, 9.5)
                    .offset(y: showing ? 0 : -100)
                    .opacity(showing ? 1 : 0)
                    .animation(Animation.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0)
                        .delay(Double(index) * 0.1), value: showing)
                    .buttonStyle(.plain)

                }
            }
            .padding()
        }
    }
}

#Preview {
    Sidebar()
}
