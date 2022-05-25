import Foundation

struct CardRepository {
  let cards = [
    Card(scientificName: "Amanita muscaria", commonName: "Fly Agaric", imageName: "fly-agaric"),
    Card(scientificName: "Pleurotus ostreatus", commonName: "Oyster Mushroom", imageName: "oyster-mushroom"),
    Card(scientificName: "Morchella", commonName: "Morel Mushroom", imageName: "morel-mushroom"),
    Card(scientificName: "Laetiporus sulphureus", commonName: "Chicken of the Woods", imageName: "chicken-of-the-woods")
  ]
  
  func getRandomCard() -> Card {
    let randomIndex = Int.random(in: 0...cards.count - 1)
    let randomCard = cards[randomIndex]
    return randomCard
  }
  
//  func wrongCards(for card: Card) -> [Card] {
//    var otherCards = cards
//    otherCards.remove
//  }
}
