//
//  TextBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 29/02/24.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Hello, Folks! This is text componant deep explore and work more".uppercased())
            .font(.title3)
            .fontWeight(.black)
//            .underline(true, color: .red)
//            .strikethrough(true, color: .green)
//            .padding()
            .baselineOffset(15.0)
            .kerning(20.0)
            .multilineTextAlignment(.center)
            .foregroundColor(.red)
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
