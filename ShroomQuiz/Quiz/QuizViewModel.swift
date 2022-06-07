import Foundation

class QuizViewModel: ObservableObject {
  
  // MARK: - Enums
  
  enum State {
    case loading
    case displayingQuestion(imageName: String, options: [String])
    case incorrectResponse(imageOverlayText: String)
    case correctResponse(imageOverlayText: String)
  }
  
  // MARK: - Public properties
  
  @Published var state: State = .loading
  
  // MARK: - Private properties
  
  private var displayedCard: Card?
  private let cardRepository = CardRepository()
  
  // MARK: - Public methods
  
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
    
    self.state = .displayingQuestion(imageName: displayedCard.imageName, options: buttonOptions)
  }
}
