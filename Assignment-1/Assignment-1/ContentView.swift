//
//  ContentView.swift
//  Assignment-1
//
//  Created by Raja Abhishek Lagadapati on 7/29/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            pegs(colors: [.green, .orange, .pink])
            pegs(colors: [.red,.green,.blue])
            pegs(colors: [.red,.green,.blue,.yellow])
            pegs(colors: [.brown,.red,.green,.blue])
            pegs(colors: [.purple,.blue,.green,.yellow])
            pegs(colors: [.blue,.green,.yellow,.purple, .pink, .orange])
            pegs(colors: [.green,.pink, .pink, .orange, .pink, .orange])
            pegs(colors: [.red,.blue,.green,.yellow,.purple])
            pegs(colors: [.blue,.green,.yellow,.purple, .indigo])
        }
    }
    func pegs(colors: [Color]) -> some View{
        HStack{
            ForEach(colors.indices, id: \.self){index in
                Circle()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
// this will randomize the cases for each of them while still following the color count
            /*
             MatchMarker(matches: (0..<colors.count).map { _ in
                [Match.exact, Match.inexact, Match.nomatch].randomElement()!
            })
             */
            
            MatchMarker(matches: getMatches(for: colors.count)) // works with the switch operations
            
        }
        .padding()
    }
    func getMatches(for count: Int) -> [Match] {
        switch count {
        case 3:
            return [.exact, .inexact, .exact]
        case 4:
            return [.exact, .inexact, .inexact, .exact]
        case 5:
            return [.exact, .exact, .inexact, .nomatch, .inexact]
        case 6:
            return [.exact, .exact, .inexact, .nomatch, .inexact, .exact]
        default:
            return Array(repeating: .exact, count: count) //to make all of them look the same but vary in number
        }
    }
}

#Preview {
    ContentView()
}
