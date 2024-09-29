//
//  NoteViewModel.swift
//  Lyra
//
//  Created by ryugel on 24/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//
       

import Foundation

class NotesViewModel: ObservableObject {
    @Published var notes: [Note] = []
    
    func addNote(_ note: Note) {
        notes.append(note)
    }
    
    func removeNote(_ note: Note) {
        notes.removeAll(where: { $0.id == note.id })
    }
    
    func updateNote(_ note: Note) {
        
    }
    
    func pinnedNote(_ noteID: String) {
    }
}
