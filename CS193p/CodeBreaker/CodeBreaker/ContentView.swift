//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Ava McCormack on 3/20/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
            Text("Hello, world!")
            Circle()
        }
        .padding()
    }
}

// using content: function
struct FuncContentView: View {
    var body: some View {
        VStack (content: functionView)
    }
}

// the function that returns view
@ViewBuilder
func functionView() -> some View {
    Text("this was returned from a function")
    Image(systemName: "globe")
}


// but ig ppl usually inline it instead of using function
struct InlineContentView: View {
    var body: some View {
        VStack (content: {
            Text("this was returned inline")
            Image(systemName: "globe")
        })
    }
}




#Preview {
    ContentView()
    FuncContentView()
    InlineContentView()
}
