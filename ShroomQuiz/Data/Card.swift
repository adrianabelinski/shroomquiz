import Foundation

struct Card: Hashable, Identifiable {
  let id = UUID()
  
  let scientificName: String
  let commonName: String
  let imageName: String
}
