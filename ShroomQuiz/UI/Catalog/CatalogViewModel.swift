import Foundation

class CatalogViewModel: ObservableObject {
  
  @Published var displayedCards: [Card] = []
  
  private let cardRespository = CardRepository()
  
  func updateDisplayedCards() {
    let allCards = Array(cardRespository.cards)
    displayedCards = allCards
  }
}
