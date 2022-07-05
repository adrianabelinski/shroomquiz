import UIKit

struct CardRepository {
  let cards: Set<Card> = [ //Set has only unique items and order doesn't matter
    Card(
      scientificName: "Amanita muscaria",
      commonName: "Fly Agaric",
      imageName: "fly-agaric",
      edible: false
    ),
    Card(
      scientificName: "Pleurotus ostreatus",
      commonName: "Oyster Mushroom",
      imageName: "oyster-mushroom",
      edible: true
    ),
    Card(
      scientificName: "Morchella",
      commonName: "Morel Mushroom",
      imageName: "morel-mushroom",
      edible: true
    ),
    Card(
      scientificName: "Laetiporus",
      commonName: "Chicken of the Woods",
      imageName: "chicken-of-the-woods",
      edible: true
    ),
    Card(
      scientificName: "Cantharellus",
      commonName: "Chanterelle",
      imageName: "chanterelle",
      edible: true
    ),
    Card(
      scientificName: "Trametes versicolor",
      commonName: "Turkey Tail",
      imageName: "turkey-tail",
      edible: true
    ),
    Card(
      scientificName: "Ramaria stricta",
      commonName: "Coral Fungus",
      imageName: "coral-fungus",
      edible: true
    ),
    Card(
      scientificName: "Auricularia auricula-judae",
      commonName: "Woods Ear",
      imageName: "woods-ear",
      edible: true
    ),
    Card(
      scientificName: "Astraeus hygrometricus",
      commonName: "Earthstar Mushroom",
      imageName: "earth-star",
      edible: false
    ),
    Card(
      scientificName: "Coprinopsis atramentaria",
      commonName: "Inky Cap",
      imageName: "inky-cap",
      edible: false
    ),
    Card(
      scientificName: "Boletus edulis",
      commonName: "Porcini",
      imageName: "porcini",
      edible: false
    ),
    Card(
      scientificName: "Cerioporus squamosus",
      commonName: "Pheasant Back",
      imageName: "pheasant-back",
      edible: true
    ),
    Card(
      scientificName: "Phallus indusiatus",
      commonName: "Bridal Veil Stinkhorn",
      imageName: "bridal-veil-stinkhorn",
      edible: true
    ),
    Card(
      scientificName: "Flammulina velutipes",
      commonName: "Enoki",
      imageName: "enoki",
      edible: true
    ),
    Card(
      scientificName: "Lycoperdon perlatum",
      commonName: "Common Puffball",
      imageName: "common-puffball",
      edible: true
    ),
    Card(
      scientificName: "Armillaria mellea",
      commonName: "Honey Fungus",
      imageName: "honey-fungus",
      edible: true
    )
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
