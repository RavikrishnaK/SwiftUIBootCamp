//
//  GridBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by RaviKrishna on 04/03/24.
//

import SwiftUI

struct GridBootCamp: View {
    let columns:[GridItem] = [
        GridItem(.flexible(), spacing: 0, alignment: nil),
        GridItem(.flexible(), spacing: 0, alignment: nil),
        GridItem(.flexible(), spacing: 0, alignment: nil),
    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(.purple)
                .aspectRatio(contentMode: .fill)
                .frame(height:300)
                .padding()
                .clipShape(Circle())
            LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders]) {
                Section(header: Text("Section -1")
                    .font(.title)
                    .bold()
                    .frame(maxWidth:.infinity)
                    .background(.green)
                    .foregroundColor(.white)
                )
                {
                    ForEach(0..<22) { index in
                        Rectangle()
                            .fill(.red)
                            .frame( height: 100)
                            .padding(.horizontal, 5)
                    }
                }
                Section(header: Text("Section -2")
                    .font(.title)
                    .bold()
                    .frame(maxWidth:.infinity)
                    .background(.orange)
                    .foregroundColor(.brown)
                )
                {
                    ForEach(0..<17) { index in
                        Rectangle()
                            .frame( height: 100)
                            .padding(.horizontal, 5)
                    }
                }

            }
        }
    }
}

struct GridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootCamp()
    }
}
