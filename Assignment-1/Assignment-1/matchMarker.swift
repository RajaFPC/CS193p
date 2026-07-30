//
//  matchMarker.swift
//  Assignment-1
//
//  Created by Raja Abhishek Lagadapati on 7/29/26.
//
import SwiftUI

enum Match{
    case inexact
    case exact
    case nomatch
}


struct MatchMarker: View {
    var matches: [Match]
    var body: some View {
        HStack {
            VStack {
                matchMarker(peg: 0)
                matchMarker(peg: 1)
            }
            VStack {
                matchMarker(peg: 2)
                matchMarker(peg: 3)
            }
            VStack {
                matchMarker(peg: 4)
                matchMarker(peg: 5)
            }
      }
       /* let numRows = 2  // Fixed
         
         let numColumns = (matches.count + 1) / 2

         ForEach(0..<2, id: \.self) { row in

             HStack {

                 ForEach(0..<numColumns, id: \.self) { column in

                     if (row * numColumns + column) < matches.count {

                         matchMarker(peg: row * numColumns + column)

                     }

                 }

             }

         }
         */
    }
        
    func matchMarker(peg: Int) -> some View{
        let exactmatch = matches.count { $0 == .exact}
        let foundmatch = matches.count { $0 != .nomatch}
        return Circle()
            .fill(exactmatch > peg ? Color.primary : Color.clear)
            .strokeBorder(foundmatch > peg ? Color.primary : Color.clear,
                          lineWidth: 3).aspectRatio(1, contentMode: .fit)
        
        
    }
}

struct matchmarkerpreview: View {
    var pegCount: Int
    var matches: [Match]
    var body: some View{
        HStack{
            ForEach(0..<pegCount, id: \.self){ _ in
                Circle().aspectRatio(contentMode: .fit)
            }
            MatchMarker(matches: matches)
          //  MatchMarker(matches: getMatches(for: pegCount)) // works with the switch operations
        }
    }
    /*func getMatches(for count: Int) -> [Match] {
        switch count {
        case 3:
            return [.exact, .inexact, .exact]
        case 4:
            return [.exact, .inexact, .inexact, .exact]
        case 5:
            return [.exact, .exact, .inexact, .exact, .inexact]
        case 6:
            return [.exact, .exact, .inexact, .nomatch, .inexact, .exact]
        default:
            return Array(repeating: .exact, count: count) //to make all of them look the same but vary in number
        }
    } */
}
#Preview {
        VStack(alignment: .leading){
            HStack{
                matchmarkerpreview(pegCount: 3, matches: [.exact, .inexact, .exact])
            }
            HStack{
                matchmarkerpreview(pegCount: 3, matches: [.exact, .inexact, .nomatch])
            }
            HStack{
                matchmarkerpreview(pegCount: 4, matches: [.exact, .inexact, .exact, .nomatch])
            }
            HStack{
                matchmarkerpreview(pegCount: 4, matches: [.exact, .inexact, .inexact, .nomatch])

            }
            HStack{
                matchmarkerpreview(pegCount: 6, matches: [.exact, .exact, .exact, .exact, .inexact, .inexact])

            }
            HStack{
                matchmarkerpreview(pegCount: 6, matches: [.exact, .inexact, .exact, .inexact, .inexact, .nomatch])

            }
            HStack{
                matchmarkerpreview(pegCount: 5, matches: [.exact, .exact, .exact, .inexact, .inexact])

            }
            HStack{
                matchmarkerpreview(pegCount: 5, matches: [.exact, .exact, .exact, .exact, .nomatch])

            }
            
        }
        .aspectRatio(contentMode: .fit)
        .padding()
        
    }

