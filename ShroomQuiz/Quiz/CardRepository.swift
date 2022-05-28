import UIKit

struct CardRepository {
  let cards: Set<Card> = [
    Card(scientificName: "Amanita muscaria", commonName: "Fly Agaric", imageName: "fly-agaric"),
    Card(scientificName: "Pleurotus ostreatus", commonName: "Oyster Mushroom", imageName: "oyster-mushroom"),
    Card(scientificName: "Morchella", commonName: "Morel Mushroom", imageName: "morel-mushroom"),
    Card(scientificName: "Laetiporus", commonName: "Chicken of the Woods", imageName: "chicken-of-the-woods-2"),
    Card(scientificName: "Cantharellus", commonName: "Chanterelle", imageName: "chanterelle"),
    Card(scientificName: "Trametes versicolor", commonName: "Turkey Tail", imageName: "turkey-tail"),
    Card(scientificName: "Ramaria stricta", commonName: "Coral Fungus", imageName: "coral-fungus"),
    Card(scientificName: "Auricularia auricula-judae", commonName: "Woods Ear", imageName: "woods-ear"),
    Card(scientificName: "Astraeus hygrometricus", commonName: "Earthstar Mushroom", imageName: "earth-star"),
    Card(scientificName: "Coprinopsis atramentaria", commonName: "Inky Cap", imageName: "inky-cap2"),
    Card(scientificName: "Boletus edulis", commonName: "Porcini", imageName: "porcini"),
    Card(scientificName: "Cerioporus squamosus", commonName: "Pheasant Back", imageName: "pheasant-back"),
    Card(scientificName: "Phallus indusiatus", commonName: "Bridal Veil Stinkhorn", imageName: "bridal-veil-stinkhorn"),
    Card(scientificName: "Flammulina velutipes", commonName: "Enoki", imageName: "enoki"),
    Card(scientificName: "Lycoperdon perlatum", commonName: "Common Puffball", imageName: "common-puffball"),
    Card(scientificName: "Armillaria mellea", commonName: "Honey Fungus", imageName: "honey-fungus")
  ]
  
  init() {
    // Checks for missing images and return a fatal error for a missing image.
    for card in cards {
      if UIImage(named: card.imageName) == nil {
        fatalError("\(card.commonName) is missing the image.")
      }
    }
  }
  
  func getRandomCard() -> Card {
    let randomIndex = Int.random(in: 0...cards.count - 1)
    let randomCard = Array(cards)[randomIndex]
    return randomCard
  }
  
  func wrongCards(for rightCard: Card) -> [Card] {
    var otherCards = cards
    otherCards.remove(rightCard)
    
    let randomizedOtherCardsArray = Array(otherCards)
      .shuffled()
    
    return Array(randomizedOtherCardsArray[0...2])
  }
}
