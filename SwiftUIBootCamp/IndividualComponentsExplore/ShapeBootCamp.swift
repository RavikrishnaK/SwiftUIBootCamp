//
//  ShapeBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 29/02/24.
//

import SwiftUI

struct ShapeBootCamp: View {
    var body: some View {
        VStack{
            Spacer()
        Circle()
            .stroke(.red, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
            .frame(width: 150, height: 150)
            Spacer()
        Circle()
                .stroke(.red, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
                .frame(width: 150, height: 150)
            Spacer()
        Circle()
                .trim(from: 0.4, to: 1.0)
                .stroke(.red, lineWidth: 30)
                .frame(width: 100, height: 100)
            Spacer()
        }
        
    }
}

struct ShapeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootCamp()
    }
}
