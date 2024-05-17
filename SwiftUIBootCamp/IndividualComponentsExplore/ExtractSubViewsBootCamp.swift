//
//  ExtractSubViewsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 04/03/24.
//

import SwiftUI

struct ExtractSubViewsBootCamp: View {
    @State var custom_bgColor: Color = .pink
    var body: some View {
        ZStack{
            // Background Layer
            self.custom_bgColor
                .ignoresSafeArea()
            
            // Content Layer
            hStacksubView
        }
    }
    var hStacksubView: some View {
        HStack{
            ContentLayerView(title: "Apples", count: 10, color: .brown)
            ContentLayerView(title: "Grapes", count: 20, color: .gray)
            ContentLayerView(title: "Oranges", count: 20, color: .orange)
        }
    }

}

struct ContentLayerView: View {
    let title:String
    let count:Int
    let color:Color
    
    var body: some View {
        VStack{
            Text(title)
            Text("\(count)")
        }.padding()
            .background(color)
        .font(.title)
        .foregroundColor(.white)
    }
    
}

struct ExtractSubViewsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsBootCamp()
    }
}

