//
//  HomeView.swift
//  Lyra
//
//  Created by ryugel on 24/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//
       

import Foundation
import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = NotesViewModel()
    
    var body: some View {
        HStack {
            Sidebar(viewModel: viewModel)
            Divider()
            Home(viewModel: viewModel)
        }
    }
}

struct Home: View {
    @ObservedObject var viewModel: NotesViewModel
    
    let gridItems = [GridItem(.adaptive(minimum: 185), spacing: 16)]

    var body: some View {
        VStack {
            Searchbar()

            VStack {
                HStack {
                    Text("Notes")
                        .font(LyraTheming.Font.headLine.font)
                    Spacer()
                }

                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 16) {
                        ForEach(viewModel.notes) { note in
                            NoteCard(title: note.title, content: note.content, created: note.created, color: note.color)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
