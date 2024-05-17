//
//  ForEachBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 01/03/24.
//

import SwiftUI

struct ForEachBootCamp: View {
    let data = ["Item1","Item2","item3"]
    var body: some View {
        VStack(){
            Spacer()
            ForEach(data.indices) { index in
                Text("\(data[index]) index is: \(index)")
            }
            Spacer()
            ForEach(0..<10) { index in
                HStack(spacing:0) {
                    Circle().fill(.red)
                    Text("Part \(index)")
                }.frame(width: 100, height: 30)
            }
            Spacer()
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}
