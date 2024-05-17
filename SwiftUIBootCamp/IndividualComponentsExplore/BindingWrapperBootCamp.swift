//
//  BindingWrapperBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 06/03/24.
//

import SwiftUI

struct BindingWrapperBootCamp: View {
    @State var custom_bgColor: Color = .green
    @State var title:String = "My Title"
    var body: some View {
        ZStack {
            self.custom_bgColor
                .ignoresSafeArea()
            ExtractedView(custom_bgColor: $custom_bgColor, title: $title)
        }
        
    }
}

struct BindingWrapperBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingWrapperBootCamp()
    }
}

struct ExtractedView: View {
    @Binding var custom_bgColor: Color
    @Binding var title:String
    @State var buttonBg: Color = .white
    
    var body: some View {
        VStack {
            Text(title)
            Button {
                self.custom_bgColor = .red
                self.title = "New Title"
                self.buttonBg = .brown
            } label: {
                Text("Clicke Me")
                    .padding()
                    .background(buttonBg)
            }
            
        }
    }
}
