//
//  WorkoutSummaryView.swift
//  Skills Practice
//
//  Created by Fernando Ramirez on 4/24/26.
//

import SwiftUI

struct WorkoutSummaryView: View {
    let workoutsThisWeek: Int
    let activeMinutes: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Workout Summary")
                .font(.headline)

            Text("\(workoutsThisWeek) workouts this week")
                .font(.subheadline)

            Text("\(activeMinutes) active minutes")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.green.opacity(0.15), in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}
