import Foundation

struct Card: Hashable, Identifiable {
  var id: String { return scientificName }
  
  let scientificName: String
  let commonName: String
  let imageName: String
  let edible: Bool
  let description: String
  let wikipediaUrlString: String
}
