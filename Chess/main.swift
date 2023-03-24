//
//  main.swift
//  Chess
//
//  Created by H.Namikawa on 2023/03/24.
//

import Foundation


var pawn = Pawn(isWhite: false)
var knigt = Knight(isWhite: false)
var bishop = Bishop(isWhite: false)
var rook = Rook(isWhite: false)
var queen = Queen(isWhite: false)
var king = King(isWhite: false)

var pieces:[Piece] = [pawn, knigt, bishop, rook, queen, king]

for piece in pieces {
  piece.move()
  print(piece.description)
}

var p1 = Pawn(isWhite:true, promoted:true, newPiece:Queen(isWhite: true))
var p2 = Pawn(isWhite:true, promoted:false)
var p3 = Pawn(isWhite:false, promoted:false)
var p4 = Pawn(isWhite:false, promoted:true, newPiece:Queen(isWhite: false))
var p5 = Pawn(isWhite:true, promoted:true, newPiece:Knight(isWhite: true))

print(p1 == p2)  // should return false
print(p1 == p4)  // should return false
print(p1 == p5)  // should return false
print(p2 == p3)  // should return false
print(p4 == p5)  // should return false
