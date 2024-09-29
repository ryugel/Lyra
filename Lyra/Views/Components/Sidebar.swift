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
    @State private var selectedColorIndex: Int? = nil
    @ObservedObject var viewModel: NotesViewModel

    var body: some View {
        VStack {
            Text("Lyra")
                .font(LyraTheming.Font.title.font)
                .padding()

            VStack {
                Tools(action: {
                    withAnimation {
                        showing.toggle()
                        rotationAngle += 45
                    }
                }).plusButton
                    .rotationEffect(.degrees(rotationAngle))
                    .frame(width: LyraTheming.Size.massive.size, height: LyraTheming.Size.massive.size)
                    .padding()
                    .animation(.easeInOut(duration: 0.3), value: rotationAngle)

                ForEach(Array(ColorSelector.allCases.enumerated()), id: \.element.color) { index, color in
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.6)) {
                            selectedColorIndex = index
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                            viewModel.notes.append(
                                Note(id: .init(), title: "Lyra", content: "", created: .now, updated: .now, isPinned: false, isArchived: false, isDeleted: false, color: color)
                            )
                            selectedColorIndex = nil
                        }
                    }) {
                        Circle()
                            .fill(color.color)
                            .frame(width: selectedColorIndex == index ? 100 : LyraTheming.Size.medium.size,
                                   height: selectedColorIndex == index ? 100 : LyraTheming.Size.medium.size)
                            .offset(x: selectedColorIndex == index ? 150 : 0)
                            .opacity(showing ? 1 : 0)
                            .scaleEffect(selectedColorIndex == index ? 1.2 : 1)
                            .animation(.spring(), value: selectedColorIndex) 
                    }
                    .padding(.bottom, 9.5)
                    .offset(y: showing ? 0 : -100)
                    .opacity(showing ? 1 : 0)
                    .animation(Animation.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0)
                        .delay(Double(index) * 0.1), value: showing)
                    .buttonStyle(.plain)
                }
            }
            Spacer()
        }
    }
}

struct NoteeCard: View {
    var title: String
    var date: String
    @State var color: ColorSelector

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.custom("Poppins-Regular", size: 18))
                .foregroundColor(.black)
            Text(date)
                .font(.custom("Poppins-Regular", size: 14))
                .foregroundColor(.gray)
        }
        .padding()
        .frame(width: 250, height: 150)
        .background(color.color)
        .cornerRadius(12)
    }
}

#Preview {
    NoteeCard(title: "Nash Underwood", date: "202-01-99", color: .blue)
}
