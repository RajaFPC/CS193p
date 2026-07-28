//
//  ContentView.swift
//  Codebreaker
//
//  Created by Raja Abhishek Lagadapati on 7/21/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            pegs(colors: [.red, .green, .green, .yellow])
            pegs(colors: [.red, .blue, .green, .red])
            pegs(colors: [.red, .yellow, .green, .blue])
        }
        .padding()
    }
    func pegs(colors: Array<Color>) -> some View{
        HStack{
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
            MatchMarkers(matches: [.exact, .inexact, .exact, .nomatch])
    
        }
    }
}



#Preview {
    ContentView()
}
