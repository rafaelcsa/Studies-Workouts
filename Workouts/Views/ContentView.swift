//
//  ContentView.swift
//  Workouts
//
//  Created by Rafael Alencar on 20/06/2021.
//

import SwiftUI

struct ContentView: View {
    let exercise: Exercise

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text(exercise.name)
                    .font(.headline)

                Spacer()

                Text("\(weightMeasurement())")
                    .font(.subheadline)

            }

            Text("\(exercise.repetitions) x \(exercise.series)")
                .font(.caption)
        }
        .padding()
        .navigationTitle("Training 1")
    }

    func weightMeasurement() -> String {
        if let weight = exercise.weight {
            let measurement = Measurement(value: weight, unit: UnitMass.kilograms)
            let formatter = MeasurementFormatter()
            formatter.locale = Locale(identifier: "nl-NL")
            return formatter.string(from: measurement)
        } else {
            return "-"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(exercise: Exercise(name: "Rope Cable Pushdown", repetitions: 12, series: 3, weight: 10))
            .preferredColorScheme(.light)
    }
}
