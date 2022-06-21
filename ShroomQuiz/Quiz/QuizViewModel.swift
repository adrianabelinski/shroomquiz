import Foundation

class QuizViewModel: ObservableObject {
  
  // MARK: - Public properties
  
  @Published var displayedImageName: String?
  @Published var imageOverlayText: String?
  @Published var imageOverlayMessageType: QuizImage.OverlayMessageType?
  @Published var buttonOptions: [String]?
  
  // MARK: - Private properties
  
  private var displayedCard: Card?
  private let cardRepository = CardRepository()
  
  // MARK: - Init
  
  init() {
    displayNewCard()
  }
  
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
    
    self.displayedImageName = displayedCard.imageName
    self.buttonOptions = buttonOptions
    
    self.imageOverlayText = nil
    self.imageOverlayMessageType = nil
  }
  
  func didAnswer(with answer: String) {
    guard let correctAnswer = displayedCard?.commonName else { return }
    
    if displayedCard?.commonName == answer {
      self.imageOverlayText = "Correct! This mushroom is a \(correctAnswer)."
      self.imageOverlayMessageType = .correct
    } else {
      self.imageOverlayText = "Wrong. This mushroom is a \(correctAnswer)."
      self.imageOverlayMessageType = .incorrect
    }
    
    self.buttonOptions = nil
  }
  
  func didPressFavoriteButton() {
    print("Pressed Favorite Button")
  }
}
