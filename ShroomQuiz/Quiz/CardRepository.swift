import Foundation

struct CardRepository {
  let cards = [
    Card(scientificName: "Amanita muscaria", commonName: "Fly Agaric", imageName: "fly-agaric"),
    Card(scientificName: "Pleurotus ostreatus", commonName: "Oyster Mushroom", imageName: "oyster-mushroom"),
    Card(scientificName: "Morchella", commonName: "Morel Mushroom", imageName: "morel-mushroom"),
    Card(scientificName: "Laetiporus sulphureus", commonName: "Chicken of the Woods", imageName: "chicken-of-the-woods"),
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
    Card(scientificName: "Laetiporus", commonName: "Chicken Of The Woods", imageName: "chicken-of-the-woods-2"),
    Card(scientificName: "Armillaria mellea", commonName: "Honey Fungus", imageName: "honey-fungus")
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
