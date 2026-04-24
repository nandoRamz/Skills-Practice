//
//  HydrationProgressView.swift
//  Skills Practice
//
//  Created by Fernando Ramirez on 4/24/26.
//

import SwiftUI

struct HydrationProgressView: View {
    let waterIntake: Int
    let goal: Int

    private var progress: Double {
        guard goal > 0 else { return 0 }
        return min(Double(waterIntake) / Double(goal), 1)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Hydration")
                .font(.headline)

            ProgressView(value: progress)
                .tint(.blue)

            Text("\(waterIntake) / \(goal) oz")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.blue.opacity(0.12), in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}
