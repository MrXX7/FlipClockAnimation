//
//  ContentView.swift
//  FlipClockAnimation
//
//  Created by Oncu Can on 30.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                FlipClockTextEffect(size: CGSize(width: 100, height: 150),
                                    fontSize: 70,
                                    cornerRadius: 10,
                                    foreground: .white,
                                    background: .red)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
