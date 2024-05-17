//
//  GradientBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 29/02/24.
//

import SwiftUI

struct GradientBootCamp: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20.0)
                .fill(LinearGradient(colors: [.red,.green,.purple], startPoint: .top, endPoint: .bottom))
            .frame(width: 200, height: 200)
            Spacer()
            RoundedRectangle(cornerRadius: 20.0)
                .fill(RadialGradient(colors: [.red,.green,.purple], center: .center, startRadius: 5, endRadius: 300))
                    .frame(width: 200, height: 200)
            Spacer()
            RoundedRectangle(cornerRadius: 20.0)
                .fill(AngularGradient(colors: [.red,.green,.purple], center: .center, angle: .degrees(45)))
                .frame(width: 200, height: 200)
        }
    }
}

struct GradientBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootCamp()
    }
}
