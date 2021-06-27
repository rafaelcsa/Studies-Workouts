//
//  TrainingsListView.swift
//  Workouts
//
//  Created by Rafael Alencar on 20/06/2021.
//

import SwiftUI

struct TrainingsListView: View {
    let trainings: [Training]
    
    var body: some View {
        NavigationView {
            List(trainings, id: \.self) { training in
                NavigationLink(training.title, destination: destination)
            }
        }
    }
    
    private var destination: some View {
        ContentView(exercise: Exercise(name: "Rope Cable Pushdown", repetitions: 12, series: 3, weight: 10))
    }
}

struct TrainingsListView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingsListView(trainings: Training.examples)
    }
}
