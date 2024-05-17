//
//  ActionSheetBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 10/03/24.
//

import SwiftUI

//struct ActionSheetBootCamp: View {
//    @State var showSheet : Bool = false
//    var body: some View {
//        ZStack{
//            VStack {
//                Button("ClickMe") {
//                    showSheet.toggle()
//                }
//                .padding()
//                .foregroundColor(.white)
//                .background(.brown)
//                Spacer()
//                .sheet(isPresented: $showSheet) {
//                    PopSheetView()
//            }
//            }
//            .frame(maxWidth:.infinity)
//            .background(
//                Color.red
//                    .ignoresSafeArea()
//            )
//        }
//    }
//}
//
//struct PopSheetView : View {
//    var body: some View {
//        ZStack{
//            VStack {
//                Text("Helloooooo...!!!!")
//            }
//            .frame(maxWidth:.infinity,maxHeight: .infinity)
//            .background(
//                Color.green
//                    .ignoresSafeArea()
//            )
//        }
//
//    }
//}
//
//struct ActionSheetBootCamp_Previews: PreviewProvider {
//    static var previews: some View {
//        ActionSheetBootCamp()
//    }
//}


struct ActionSheetBootCamp: View {
    // Define a @State property to hold a boolean value
    @State private var isTextVisible = false
    @State private var count = 0

    var body: some View {
//        VStack {
//            // Button to toggle the visibility of the text
//            Button(action: {
//                // Toggle the boolean value
//                self.isTextVisible.toggle()
//            }) {
//                Text("Toggle Text Visibility")
//            }
//
//            // Display text based on the state of isTextVisible
//            if isTextVisible {
//                Text("Hello, World!")
//                    .padding()
//            }
//        }
        VStack {
             Text("Count: \(count)")
                 .padding()
             
             Button("Increment") {
                 // Increment the count when the button is tapped
                 count += 1
             }
             .padding()
        }
        
    }
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}
