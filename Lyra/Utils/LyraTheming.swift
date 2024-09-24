//
//  LyraTheming.swift
//  Lyra
//
//  Created by ryugel on 21/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//

import Foundation
import SwiftUI

struct LyraTheming {
    enum Size {
        case extraExtraSmall
        case extraSmall
        case small
        case medium
        case large
        case extraLarge
        case extraExtraLarge
        case huge
        case massive

        var size: CGFloat {
            switch self {
            case .extraExtraSmall: return 8
            case .extraSmall: return 10
            case .small: return 12
            case .medium: return 16
            case .large: return 20
            case .extraLarge: return 24
            case .extraExtraLarge: return 30
            case .huge: return 32
            case .massive: return 40
            }
        }
    }

    enum Color {
        case primary
        case secondary
        case tertiary
        case quaternary
        case quinary
        case quinaryAlt
        case quinaryAlt2
        case quinaryAlt3
        case quinaryAlt4
        case black

        var color: SwiftUI.Color {
            switch self {
            case .primary: return .primary
            case .secondary: return .secondary
            case .tertiary: return .gray
            case .quaternary: return .green
            case .quinary: return .purple
            case .quinaryAlt: return .yellow
            case .quinaryAlt2: return .pink
            case .quinaryAlt3: return .orange
            case .quinaryAlt4: return .blue
            case .black: return .black
            }
        }
    }

    enum Font {
        case caption
        case body
        case title
        case headLine
        case subHeadLine
        case largeTitle

        var font: SwiftUI.Font {
            switch self {
            case .caption: return .caption
            case .body: return .body
            case .title: return .title
            case .headLine: return .headline
            case .subHeadLine: return .subheadline
            case .largeTitle: return .largeTitle
            }
        }
    }
}
