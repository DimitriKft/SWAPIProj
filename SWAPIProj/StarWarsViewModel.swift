//
//  StarWarsViewModel.swift
//  SWAPIProj
//
//  Created by dimitri on 19/10/2023.
//

import Foundation


class StarWarsViewModel: ObservableObject {
    @Published var characters: [StarWarsCharacter] = []
    
    func fetchCharacters() {
        let url = URL(string: "https://swapi.dev/api/people/")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode(StarWarsData.self, from: data)
                    DispatchQueue.main.async {
                        self.characters = decodedData.results
                    }
                } catch {
                    print("Erreur de décodage: \(error)")
                }
            }
        }.resume()
    }
}
