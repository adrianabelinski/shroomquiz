import Foundation

struct Card: Hashable, Identifiable {
  let id = UUID()
  
  let scientificName: String
  let commonName: String
  let imageName: String
  let edible: Bool
  let description: String
  let wikipediaUrlString: String
}
