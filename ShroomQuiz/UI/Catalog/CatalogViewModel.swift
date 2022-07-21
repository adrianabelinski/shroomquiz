import Foundation

class CatalogViewModel: ObservableObject {
  
  @Published var displayedCards: [Card] = []
  
  private let cardRespository = CardRepository()
  
  func updateDisplayedCards() {
    displayedCards = cardRespository.getAlphabetizedCards()
  }
}
