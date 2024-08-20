//
//  ContentView.swift
//  Consumer
//
//  Created by Anders on 8/18/24.
//

import SwiftUI

import Parent

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear(perform: {
            let parent = MyParent()
            parent.doThing()
            parent.child.doThing()
        })
    }
}
