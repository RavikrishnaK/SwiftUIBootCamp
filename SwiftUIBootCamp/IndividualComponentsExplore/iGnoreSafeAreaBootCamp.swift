//
//  iGnoreSafeAreaBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 04/03/24.
//

import SwiftUI

struct iGnoreSafeAreaBootCamp: View {
    var body: some View {
        ScrollView {
            VStack{
                Text("Title Goes here..")
                    .font(.title)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 20.0)
                        .fill(.white)
                        .frame(height: 200)
                        .padding(5)
                        .shadow(color: .gray, radius: 15)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.purple)
        }
        .background(
            Color.red
            .ignoresSafeArea()
        )
//        .ignoresSafeArea()
    }
}

struct iGnoreSafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        iGnoreSafeAreaBootCamp()
    }
}
