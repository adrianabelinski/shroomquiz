import Foundation

struct Card: Hashable, Identifiable {
  var id: String { return scientificName }
  
  let scientificName: String
  let commonName: String
  let imageName: String
  let edible: Bool
  let description: String
  let wikipediaUrlString: String
  
  /// Same as `commonName`, but starts with "a" or "an" depending on vowel
  var aCommonName: String {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    var article = ""
    
    if vowels.contains(commonName.lowercased().first!) {
      article = "an"
    } else {
      article = "a"
    }
    
    return "\(article) \(commonName)"
  }
}
