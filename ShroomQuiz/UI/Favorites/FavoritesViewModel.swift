import Foundation

class FavoritesViewModel: ObservableObject { //FavoriteView will observe FavoritesViewModel based on any changes in @Published
  
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
