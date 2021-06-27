//
//  WorkoutsApp.swift
//  Workouts
//
//  Created by Rafael Alencar on 20/06/2021.
//

import SwiftUI

@main
struct WorkoutsApp: App {
    var body: some Scene {
        WindowGroup {
            TrainingsListView(trainings: Training.examples)
        }
    }
}
