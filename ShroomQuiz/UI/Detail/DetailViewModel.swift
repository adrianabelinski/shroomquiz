import Foundation
import UIKit

class DetailViewModel: ObservableObject {
  
  // MARK: - Public properties
  
  var imageName: String { //Type notation
    card.imageName
  }
  
  var commonName: String {
    card.commonName
  }
  
  var scientificName: String {
    card.scientificName
  }
  
  @Published var isFavorited: Bool

  var isEdible: Bool {
    card.edible
  }
  
  var description: String {
    card.description
  }
  
  // MARK: - Private properties
  
  private let card: Card
  
  private let favoritesProvider = FavoritesProvider()
  
  // MARK: - Init
  
  init(card: Card) {
    self.card = card
    isFavorited = favoritesProvider.isFavorited(card: card)
  }
  
  // MARK: - Public methods
  
  func didPressFavoriteButton() {
    if favoritesProvider.isFavorited(card: card) {
      favoritesProvider.unfavorite(card: card)
    } else {
      favoritesProvider.favorite(card: card)
    }
    
    isFavorited = favoritesProvider.isFavorited(card: card)
  }
  
  func openWikipedia() {
    if let wikipediaUrl = URL(string: card.wikipediaUrlString) {
      UIApplication.shared.open(wikipediaUrl)
    } else {
      print("Invalid Url")
    }
  }
}
