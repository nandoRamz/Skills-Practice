//
//  ContentView.swift
//  Skills Practice
//
//  Created by Fernando Ramirez on 4/24/26.
//

import SwiftUI

struct BasicInfoView: View {
    let title: String
    let message: String

    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)

            Text(message)
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            BasicInfoView(
                title: "Welcome",
                message: "This is a basic reusable SwiftUI view."
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
