//
//  ButtonsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 04/03/24.
//

import SwiftUI

struct ButtonsBootCamp: View {
    @State var txt_title: String = "Sample text"
    var body: some View {
        VStack(spacing: 30){
            Text(txt_title)
                .font(.title)
                .fontWeight(.semibold)
            
            // Button-1
            Button("Button#1"){
                self.txt_title = "Button #1 Pressed"
            }
            .font(.title2)
            
            // Button-2
            Button {
                self.txt_title = "Button #2 Pressed"
            } label: {
                Text("Button #2")
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.purple
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    )
            }

            // Button-3
            Button {
                self.txt_title = "Button #3 Pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            
            // Button-4
            Button {
                self.txt_title = "Button #4 Pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            }
            
            Button() {
                self.txt_title = "Button Restart Pressed"

            } label: {
                Image(systemName: "restart")
                Text("ReStart")
            }
//            .background(.red)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
//            .buttonBorderShape(.roundedRectangle) //change bordershape see below
//            .buttonBorderShape(.roundedRectangle(radius: 4)) // see below
            .controlSize(.large)
            
        }
    }
}

struct ButtonsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootCamp()
    }
}
