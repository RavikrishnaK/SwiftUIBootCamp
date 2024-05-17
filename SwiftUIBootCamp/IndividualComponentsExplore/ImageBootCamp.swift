//
//  ImageBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 29/02/24.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "heart.fill")
                .renderingMode(.original) // Difference here
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.green)
            .frame(width: 100, height: 100)
            
            Spacer()
            Image(systemName: "heart.fill")
                .renderingMode(.template) // Difference here
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.green)
            .frame(width: 100, height: 100)
            Spacer()

            Image("gicon")
                .renderingMode(.original) // Difference here
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.red)
                .frame(width: 80, height: 80)
            Spacer()
            Image("gicon")
                .renderingMode(.template) // Difference here
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.purple)
                .frame(width: 80, height: 80)
            Spacer()
            Image("puppy")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.red)
                .clipShape(Circle())
                .frame(width: 120, height: 150)
        }
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
