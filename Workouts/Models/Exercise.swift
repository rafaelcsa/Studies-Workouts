//
//  Exercise.swift
//  Workouts
//
//  Created by Rafael Alencar on 20/06/2021.
//

import Foundation

struct Exercise: Hashable {
    var name: String
    var repetitions: Int
    var series: Int
    var weight: Double?
}

extension Exercise {
    static var examples: [Exercise] {
        [
            Exercise(name: "Rope Cable Pushdown", repetitions: 12, series: 3, weight: 10),
            Exercise(name: "Rope Cable Pushdown", repetitions: 12, series: 3, weight: 10),
            Exercise(name: "Rope Cable Pushdown", repetitions: 12, series: 3, weight: 10)
        ]
    }
}
