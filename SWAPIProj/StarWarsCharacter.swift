//
//  StarWarsCharacter.swift
//  SWAPIProj
//
//  Created by dimitri on 19/10/2023.
//

import Foundation

struct StarWarsData: Decodable {
    let results: [StarWarsCharacter]
}

struct StarWarsCharacter: Identifiable, Decodable {
    let name: String
    var id: String { name }
}

