import Foundation

class QuizViewModel: ObservableObject {
  @Published var displayedCard: Card?
  
  private let cardRepository = CardRepository()
  
  func displayNextCard() {
    displayedCard = cardRepository.getRandomCard()
  }
}
