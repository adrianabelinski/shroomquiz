import SwiftUI

struct DetailView: View {
  let viewModel: DetailViewModel
  
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        Text(viewModel.scientificName)
          .font(.title2)
        
        CardImage(
          imageName: viewModel.imageName,
          overlayText: nil,
          overlayMessageType: nil,
          showingFavoriteButton: true,
          isFavorited: true,
          favoriteButtonAction: {}
        )
      }
      .padding([.horizontal, .bottom])
    }
    .navigationTitle(viewModel.commonName)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(viewModel: DetailViewModel(card: CardRepository().cards.first!))
  }
}
