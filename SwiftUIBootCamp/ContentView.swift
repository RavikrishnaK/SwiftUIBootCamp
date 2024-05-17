//
//  ContentView.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 29/02/24.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .underline(true, color: .green)
//            .strikethrough(true, color: .red)
//            .padding()
//    }
//}

struct ContentView: View {
    @State private var isToggled = false
    
    var body: some View {
        VStack {
            ToggleView(isOn: $isToggled)
            Text(isToggled ? "Toggle is ON" : "Toggle is OFF")
                .padding()
        }
    }
}

struct ToggleView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle("Toggle", isOn: $isOn)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
