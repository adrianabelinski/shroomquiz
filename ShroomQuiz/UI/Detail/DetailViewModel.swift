import Foundation

struct DetailViewModel {
  
  var title: String {
    card.commonName
  }
  
  private let card: Card
  
  init(card: Card) {
    self.card = card
  }
  
}
