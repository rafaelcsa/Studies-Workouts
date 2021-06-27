//
//  WelcomeView.swift
//  Workouts
//
//  Created by Rafael Alencar on 20/06/2021.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: ContentView(exercise: Exercise(name: "Rope Cable Pushdown", repetitions: 12, series: 3, weight: 10))) {
                Text("Go to Trainings")
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
