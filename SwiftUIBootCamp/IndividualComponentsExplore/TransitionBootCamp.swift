//
//  TransitionBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 10/03/24.
//

import SwiftUI

struct TransitionBootCamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Click Me") {
                    showView.toggle()
                }
                Spacer()
                
                if showView {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
//                        .transition(.slide)
                        .transition(.move(edge: .bottom))
//                        .transition(
//                            .asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity))
                        .animation(.easeInOut)
                    
                }
          

            }
            .background(
                Color.white
                    .ignoresSafeArea()
            )

        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootCamp()
    }
}
