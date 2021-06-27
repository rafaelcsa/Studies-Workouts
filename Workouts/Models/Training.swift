//
//  Training.swift
//  Workouts
//
//  Created by Rafael Alencar on 27/06/2021.
//

import Foundation

struct Training: Hashable, Identifiable {
    let id: UUID = UUID()
    let title: String
    let exercises: [Exercise]
}

// Examples

extension Training {
    static var examples: [Training] {
        [
            Training(title: "Training 1", exercises: Exercise.examples),
            Training(title: "Training 2", exercises: Exercise.examples),
            Training(title: "Training 3", exercises: Exercise.examples)
        ]
    }
}
