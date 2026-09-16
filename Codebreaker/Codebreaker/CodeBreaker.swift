//
//  CodeBreaker.swift
//  Codebreaker
//
//  Created by Raja Abhishek Lagadapati on 8/21/26.
//

import SwiftUI

// ask ai that converts a string to a color and back to a string.
typealias Peg = Color // if each peg becomes an emoji or something like that then the colors will need to be a string to encode the symbol.

struct CodeBreaker {
    var masterCode: Code = Code(kind: .masterCode)
    var guess: Code = Code(kind: .guess)
    var attempts: [Code] = [Code]()
    let pegChoices: [Peg] = [.red, .green, .blue, .yellow]
}
 
struct Code {
    var pegs: [Peg] = [.green, .red, .red, .yellow]
    var kind: Kind
    
    enum Kind{
        case masterCode
        case guess
        case attempt
        case unknown
    }
}
