import Foundation

class QuizViewModel: ObservableObject {
  @Published var displayedCard: Card?
  @Published var buttonOptions: [String] = []
  
  private let cardRepository = CardRepository()
  
  func displayNextCard() {
    let displayedCard = cardRepository.getRandomCard()
    
    let wrongCards = cardRepository.wrongCards(for: displayedCard)
    
    var buttonOptions = [String]()
    
    buttonOptions.append(displayedCard.commonName)
    buttonOptions.append(wrongCards[0].commonName)
    buttonOptions.append(wrongCards[1].commonName)
    buttonOptions.append(wrongCards[2].commonName)
    buttonOptions.shuffle()
    
    self.displayedCard = displayedCard
    self.buttonOptions = buttonOptions
  }
}
