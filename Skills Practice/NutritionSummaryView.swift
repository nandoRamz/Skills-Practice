//
//  NutritionSummaryView.swift
//  Skills Practice
//
//  Created by Fernando Ramirez on 4/24/26.
//

import SwiftUI

struct NutritionSummaryView: View {
    let calories: Int
    let proteinGrams: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Nutrition")
                .font(.headline)

            Text("\(calories) calories")
                .font(.subheadline)

            Text("\(proteinGrams)g protein")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.orange.opacity(0.15), in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}
