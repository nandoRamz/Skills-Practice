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

            NutritionSummaryView(
                calories: 1_980,
                proteinGrams: 132
            )

            SleepQualityView(
                hoursSlept: 7.4,
                sleepGoal: 8.0
            )

            StepGoalView(
                steps: 8_250,
                goal: 10_000
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
