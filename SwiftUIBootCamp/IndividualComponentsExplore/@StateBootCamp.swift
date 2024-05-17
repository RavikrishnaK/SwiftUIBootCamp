//
//  @StateBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 04/03/24.
//

import SwiftUI

struct _StateBootCamp: View {
    @State var custom_Bgcolor : Color = .green
    @State var myTitle: String = "Basic Title"
    @State var count : Int = 0
    
    var body: some View {
        ZStack{
            self.custom_Bgcolor
                .ignoresSafeArea()
            VStack(spacing:20){
                Text(myTitle)
                Text("Count: \(count)")
                HStack(spacing:20){
                    Button("Button-1") {
                        self.custom_Bgcolor = .red
                        self.myTitle = "First Button Pressed"
                        self.count += 1
                    }
                    .padding(.all, 10)
                    .background(.brown)
                    .cornerRadius(10)

                    Button("Button-2") {
                        self.custom_Bgcolor = .purple
                        self.myTitle = "Second Button Pressed"
                        self.count -= 1
                    }
                    .padding(.all, 10)
                    .background(.brown)
                    .cornerRadius(10)

                }
            }
        }
        .foregroundColor(.white)
        .font(.title)
    }
}

struct _StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        _StateBootCamp()
    }
}
