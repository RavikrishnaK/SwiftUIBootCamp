//
//  InitilizerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 01/03/24.
//

import SwiftUI

struct InitilizerBootCamp: View {
    
    let backgroundColor: Color
    let count:Int
    let tittle:String
    
    init(count:Int, fruit:Fruits){
        self.count = count
        if fruit == .apple {
            self.backgroundColor = .red
            self.tittle = "Appleeee"
        }
        else{
            self.backgroundColor = .orange
            self.tittle = "Orangeee"
        }
    }
    
    enum Fruits {
    case apple
    case orange
    }
    
    var body: some View {
        VStack(spacing:10){
            Text("\(count)").font(.largeTitle).foregroundColor(.white).fontWeight(.bold).underline()
            Text(tittle).foregroundColor(.white).font(.title)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitilizerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitilizerBootCamp(count: 101, fruit: .apple)
            InitilizerBootCamp(count: 111, fruit: .orange)
        }
    }
}
