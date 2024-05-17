//
//  AnimationBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 06/03/24.
//

import SwiftUI

struct AnimationBootCamp: View {
    @State var isAnimated:Bool = false
    var body: some View {
        VStack {
            Button("Start Animation:\(isAnimated.description)") {
//                withAnimation(Animation.default.delay(0.5)) {
                withAnimation(Animation.default.repeatCount(10, autoreverses: true)) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 20)
                .fill(isAnimated ? .red : .brown)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
//            Spacer()
        }
        
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
