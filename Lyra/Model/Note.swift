//
//  Note.swift
//  Lyra
//
//  Created by ryugel on 21/09/2024.
//  Copyright © 2024 DeRosa. All rights reserved.
//

import Foundation

struct Note: Identifiable {
    var id: UUID
    var title: String
    var content: String
    let created: Date
    var updated: Date
    var isPinned: Bool
    var isArchived: Bool
    var isDeleted: Bool
    var color: ColorSelector

    static var defaultValue: Note {
        Note(id: UUID(),
             title: "Advanced Data Management",
             content: """
                 Data management involves the practice of collecting, keeping, and using data securely, efficiently, and cost-effectively. Proper data management is essential in today's data-driven world. Data comes from various sources including customer databases, social media interactions, IoT devices, and financial transactions.

                 Key components of data management include data governance, data integration, and data quality. Data governance ensures proper oversight and compliance with regulatory frameworks such as GDPR. Data integration allows combining data from different sources into a unified view, while data quality ensures that the data is accurate and useful for decision-making.

                 Furthermore, with the rise of big data, companies face new challenges in managing vast amounts of information. Cloud storage solutions, artificial intelligence, and machine learning have become indispensable in dealing with this complexity.
                 """,
             created: Date.now,
             updated: Date(),
             isPinned: false,
             isArchived: false,
             isDeleted: false,
             color: .green)
    }
}
