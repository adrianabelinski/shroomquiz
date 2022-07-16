import Foundation
import UIKit

struct DetailViewModel {
  
  var imageName: String {
    card.imageName
  }
  
  var commonName: String {
    card.commonName
  }
  
  var scientificName: String {
    card.scientificName
  }
  
  var description: String {
    card.description
  }
  
  private let card: Card
  
  init(card: Card) {
    self.card = card
  }
  
  func openWikipedia() {
    if let wikipediaUrl = URL(string: card.wikipediaUrlString) {
      UIApplication.shared.open(wikipediaUrl)
    } else {
      print("Invalid Url")
    }
  }
}
