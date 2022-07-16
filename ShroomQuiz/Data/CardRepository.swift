import UIKit

struct CardRepository {
  let cards: Set<Card> = [ //Set has only unique items and order doesn't matter
    Card(
      scientificName: "Amanita muscaria",
      commonName: "Fly Agaric",
      imageName: "fly-agaric",
      edible: false,
      description: "Amanita muscaria, commonly known as the fly agaric or fly amanita,[5] is a basidiomycete of the genus Amanita. Arguably the most iconic toadstool species, the fly agaric is a large white-gilled, white-spotted, usually red mushroom. Although poisonous, death due to poisoning from A. muscaria ingestion is quite rare",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Amanita_muscaria"
    ),
    Card(
      scientificName: "Pleurotus ostreatus",
      commonName: "Oyster Mushroom",
      imageName: "oyster-mushroom",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Morchella",
      commonName: "Morel Mushroom",
      imageName: "morel-mushroom",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Laetiporus",
      commonName: "Chicken of the Woods",
      imageName: "chicken-of-the-woods",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Cantharellus",
      commonName: "Chanterelle",
      imageName: "chanterelle",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Trametes versicolor",
      commonName: "Turkey Tail",
      imageName: "turkey-tail",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Ramaria stricta",
      commonName: "Coral Fungus",
      imageName: "coral-fungus",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Auricularia auricula-judae",
      commonName: "Woods Ear",
      imageName: "woods-ear",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Astraeus hygrometricus",
      commonName: "Earthstar Mushroom",
      imageName: "earth-star",
      edible: false,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Coprinopsis atramentaria",
      commonName: "Inky Cap",
      imageName: "inky-cap",
      edible: false,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Boletus edulis",
      commonName: "Porcini",
      imageName: "porcini",
      edible: false,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Cerioporus squamosus",
      commonName: "Pheasant Back",
      imageName: "pheasant-back",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Phallus indusiatus",
      commonName: "Bridal Veil Stinkhorn",
      imageName: "bridal-veil-stinkhorn",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Flammulina velutipes",
      commonName: "Enoki",
      imageName: "enoki",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Lycoperdon perlatum",
      commonName: "Common Puffball",
      imageName: "common-puffball",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
    ),
    Card(
      scientificName: "Armillaria mellea",
      commonName: "Honey Fungus",
      imageName: "honey-fungus",
      edible: true,
      description: "TODO",
      wikipediaUrlString: "TODO"
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
