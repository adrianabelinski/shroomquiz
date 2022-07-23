import Foundation
import UIKit


struct DetailViewModel {
  
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
  
  var isFavorited: Bool {
    favoritesProvider.isFavorited(card: card)
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
  }
  
  // MARK: - Public methods
  
  func openWikipedia() {
    if let wikipediaUrl = URL(string: card.wikipediaUrlString) {
      UIApplication.shared.open(wikipediaUrl)
    } else {
      print("Invalid Url")
    }
  }
}
