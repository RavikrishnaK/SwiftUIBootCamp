//
//  ScrollViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 01/03/24.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        
        // **** Normal Scroll View *****
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack{
//                ForEach(0..<15) { index in
//                    Rectangle()
//                        .fill(.red)
//                        .frame(width: 300, height:250)
//                }
//            }
//        }
        
        // **** Verticle and horizantal scrollView in a single screen *****
        // Note: Here LazyVSatck and LazyHStack can be represents visible cells to be allocated during scroll, not like VStack and HStack.
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<50) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack{
                            ForEach(0..<30) { index in
                                RoundedRectangle(cornerRadius: 20.0)
                                    .fill(.white)
                                    .frame(width: 150, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }

    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
