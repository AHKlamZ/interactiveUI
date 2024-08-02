//
//  ContentView.swift
//  interactiveUI
//
//  Created by Scholar on 25/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            
            TextField("Write name here...", text: $name)
                .frame(width: 300.0, height: 40.0)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: 1)
            
            Button("Button") {
                textTitle = "Hello, \(name)."
                name = ""
            }
            .padding(.top)
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        }
    }
}

#Preview {
    ContentView()
}
