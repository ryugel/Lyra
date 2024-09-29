//
//  ColorSelector.swift
//  Lyra
//
//  Created by ryugel on 21/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//

import Foundation
import SwiftUI

enum ColorSelector: String, Codable, CaseIterable {
    case red
    case green
    case blue
    case purple
    case yellow
    case orange
    case pink

    var color: Color {
        switch self {
        case .red: return .red
        case .green: return .green
        case .blue: return .blue
        case .purple: return .purple
        case .yellow: return .yellow
        case .orange: return .orange
        case .pink: return .pink
        }
    }
}
