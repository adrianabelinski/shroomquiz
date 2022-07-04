import Foundation

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
  
  private let card: Card
  
  init(card: Card) {
    self.card = card
  }
  
}
