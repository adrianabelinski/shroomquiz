import SwiftUI

struct FavoritesView: View {
  
  @StateObject var viewModel = FavoritesViewModel()
  
  var body: some View {
    ScrollView {
      ForEach(viewModel.displayedCards) { card in
        Text(card.commonName)
      }
    }
    .onAppear() {
      viewModel.updateDisplayedCards()
    }
    .navigationTitle("Favorites")
  }
}

struct FavoritesView_Previews: PreviewProvider {
  static var previews: some View {
    FavoritesView()
  }
}
