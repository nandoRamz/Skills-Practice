//
//  ContentView.swift
//  Skills Practice
//
//  Created by Fernando Ramirez on 4/24/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            BasicInfoView(
                title: "Fitness Tracker",
                message: "Track your workouts and hydration for the day."
            )

            WorkoutSummaryView(
                workoutsThisWeek: 4,
                activeMinutes: 185
            )

            HydrationProgressView(
                waterIntake: 54,
                goal: 80
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
