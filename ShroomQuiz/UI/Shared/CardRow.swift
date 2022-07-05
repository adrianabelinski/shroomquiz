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
      Spacer()
    }
    .padding(.horizontal, 10)
  }
}

struct CardRow_Previews: PreviewProvider {
  static var previews: some View {
    CardRow(card: Card(scientificName: "Amanita muscaria", commonName: "Fly Agaric", imageName: "fly-agaric", edible: false))
      .previewLayout(.sizeThatFits)
  }
}
