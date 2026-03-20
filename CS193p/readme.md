# CS193p
Course from https://cs193p.stanford.edu - https://www.youtube.com/playlist?list=PLoROMvodv4rPHblRXKsJCQs8TLGpiCTrG

Video Progression\
1 - 3-20-2026 (Intro)

## 1. Intro

- swift is protocol oriented 

- likes to use structs
- all vars have type `var s: Int = 0`
- all vars must have value

- return function like react with return type being TupleView<> but simplified as some View
- you could return inline which is just the same as first original declaration
    - allowed to remove the `content:` if last variable in constructor is function
    - then if using the other default values for instructor, you can remove the parenthesis 
```
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
```



## 2. 
