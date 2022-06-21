import Foundation

class FavoritesProvider { // to be used by view model. Will mark something as faved, unfaved, and tell us if  a specific mushroom is favorites.
  
  private let isFavoritedKey = "is.favorited."
  private let userDefaults = UserDefaults.standard
  
  func favorite(card: Card) {
    userDefaults.set(true, forKey: "\(isFavoritedKey)\(card.commonName)") //Like a dictionary, whose values are saved over time.
  }
  
  func unfavorite(card: Card) {
    userDefaults.set(false, forKey: "\(isFavoritedKey)\(card.commonName)")
  }
  
  func isFavorited(card: Card) -> Bool {
    return userDefaults.bool(forKey: "\(isFavoritedKey)\(card.commonName)")
  }
  
}
