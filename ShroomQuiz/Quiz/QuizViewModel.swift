import Foundation

class QuizViewModel: ObservableObject {
  
  // MARK: - Enums
  
  enum State {
    case loading
    case displayingQuestion(imageName: String, options: [String])
    case correctResponse(imageName: String, imageOverlayText: String)
    case incorrectResponse(imageName: String, imageOverlayText: String)
  }
  
  // MARK: - Public properties
  
  @Published var state: State = .loading
  
  // MARK: - Private properties
  
  private var displayedCard: Card?
  private let cardRepository = CardRepository()
  
  // MARK: - Public methods
  
  func displayNewCard() {
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
  
  func didAnswer(with answer: String) {
    guard case let .displayingQuestion(imageName, _) = state else { return }
    guard let correctAnswer = displayedCard?.commonName else { return }
    
    if displayedCard?.commonName == answer {
      state = .correctResponse(imageName: imageName, imageOverlayText: "Correct! This mushroom is a \(correctAnswer).")
    } else {
      state = .incorrectResponse(imageName: imageName, imageOverlayText: "Wrong. This mushroom is a \(correctAnswer).")
    }
  }
  
}
