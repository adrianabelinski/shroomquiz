import Foundation

class FavoritesViewModel: ObservableObject {
  
  @Published var displayedCards: [Card] = []
  
  private let cardRespository = CardRepository()
  private let favoritesProvider = FavoritesProvider()
  
  func updateDisplayedCards() {
    let allCards = cardRespository.getAlphabetizedCards()
    let favoritedCards = allCards.filter { card in
      favoritesProvider.isFavorited(card: card)
    }
    displayedCards = favoritedCards
  }
}
