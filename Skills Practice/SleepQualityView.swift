//
//  SleepQualityView.swift
//  Skills Practice
//
//  Created by Fernando Ramirez on 4/24/26.
//

import SwiftUI

struct SleepQualityView: View {
    let hoursSlept: Double
    let sleepGoal: Double

    private var sleepProgress: Double {
        guard sleepGoal > 0 else { return 0 }
        return min(hoursSlept / sleepGoal, 1)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Sleep")
                .font(.headline)

            ProgressView(value: sleepProgress)
                .tint(.indigo)

            Text(String(format: "%.1f / %.1f hours", hoursSlept, sleepGoal))
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.indigo.opacity(0.14), in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}
