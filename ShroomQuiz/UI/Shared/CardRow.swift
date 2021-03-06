import SwiftUI

struct CardRow: View {
  let card: Card
  
  var body: some View {
    HStack() {
      Image(card.imageName)
        .resizable()
        .frame(width: 70, height: 70)
        .cornerRadius(10)
      
      Text(card.commonName)
        .tint(.textGrey)
      
      Spacer()
      
      Image(systemName: "chevron.right")
        .tint(.textGrey)
    }
    .padding(.horizontal, 10)
  }
}

struct CardRow_Previews: PreviewProvider {
  static var previews: some View {
    CardRow(card: Card(scientificName: "Amanita muscaria", commonName: "Fly Agaric", imageName: "fly-agaric", edible: false, description: "TODO", wikipediaUrlString: "TODO"))
      .previewLayout(.sizeThatFits)
  }
}
