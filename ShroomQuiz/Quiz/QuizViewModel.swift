import Foundation

class QuizViewModel: ObservableObject {
  
  // MARK: - Public properties
  
  @Published var imageName: String?
  @Published var imageOverlayText: String?
  @Published var buttonOptions: [String] = []
  
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
    
    self.imageName = displayedCard.imageName
    self.imageOverlayText = "Lorem Ipsum"
    self.buttonOptions = buttonOptions
  }
}
