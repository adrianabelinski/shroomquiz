import Foundation

class QuizViewModel: ObservableObject {
  
  // MARK: - Public properties
  
  @Published var displayedImageName: String?
  @Published var imageOverlayText: String?
  @Published var imageOverlayMessageType: CardImage.OverlayMessageType?
  @Published var buttonOptions: [String]?
  @Published var showingFavoriteButton = false
  @Published var isFavorited = false
  //@Published var isEdible = false
  
  // MARK: - Private properties
  
  private var displayedCard: Card?
  private let cardRepository = CardRepository()
  private let favoritesProvider = FavoritesProvider()
  
  // MARK: - Init
  
  init() {
    displayNewCard()
  }
  
  // MARK: - Public methods
  
  func displayNewCard() {
    showingFavoriteButton = false

    let newCard = cardRepository.getRandomCard(oldCard: displayedCard)
    
    let wrongCards = cardRepository.wrongCards(for: newCard)
    
    var buttonOptions = [String]()
    
    buttonOptions.append(newCard.commonName)
    buttonOptions.append(wrongCards[0].commonName)
    buttonOptions.append(wrongCards[1].commonName)
    buttonOptions.append(wrongCards[2].commonName)
    buttonOptions.shuffle()
    
    self.displayedCard = newCard
    
    self.displayedImageName = newCard.imageName
    self.buttonOptions = buttonOptions
    
    self.imageOverlayText = nil
    self.imageOverlayMessageType = nil
    
    self.isFavorited = favoritesProvider.isFavorited(card: newCard)
  //  self.isEdible = newCard.edible
  }
  
  func didAnswer(with answer: String) {
    guard let correctAnswer = displayedCard?.commonName else { return }
    
    showingFavoriteButton = true
    
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
    guard let displayedCard = displayedCard else {
      return
    }

    if favoritesProvider.isFavorited(card: displayedCard) {
      favoritesProvider.unfavorite(card: displayedCard)
    } else {
      favoritesProvider.favorite(card: displayedCard)
    }
    
    isFavorited = favoritesProvider.isFavorited(card: displayedCard)
  }
}
