//
//  StarWarsView.swift
//  SWAPIProj
//
//  Created by dimitri on 19/10/2023.
//

import SwiftUI

struct StarWarsView: View {
    @ObservedObject var viewModel = StarWarsViewModel()
    
    var body: some View {
        List(viewModel.characters) { character in
            Text(character.name)
                .foregroundStyle(.yellow)
                .fontWeight(.bold)
        }
        .onAppear() {
            viewModel.fetchCharacters()
        }
    }
}



#Preview {
    StarWarsView()
        .preferredColorScheme(.dark)
}

