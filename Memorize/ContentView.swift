//
//  ContentView.swift
//  Memorize
//
//  Created by Sillas Santos on 21/07/22.
//

import SwiftUI
import CoreData
 
struct ContentView: View {
    
    let viewModel: MemoryGameViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive (minimum: 65))]) {
                    ForEach (viewModel.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                    .foregroundColor (.red)
                }
                . padding (.horizontal)
                
            }
        }
    }
    
    struct CardView: View {
        
        let card: MemoryGame<String>.Card
        
        var body: some View {
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                if card.isFaceUp {
                    shape.fill().foregroundColor (.white)
                    shape.strokeBorder(lineWidth: 3)
                    Text (card.content).font (.largeTitle)
                } else {
                    shape.fill()
                }
            }
            
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                let viewModel = MemoryGameViewModel()
                ContentView(viewModel: viewModel)
            }
        }
        
    }
    
}
