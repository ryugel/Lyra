//
//  Searchbar.swift
//  Lyra
//
//  Created by ryugel on 23/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//

import Foundation
import SwiftUI

struct Searchbar: View {
    var body: some View {
        TextField("Search", text: .constant(""))
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .padding(.horizontal, 10)
    }
}

#Preview {
    Searchbar()
}
