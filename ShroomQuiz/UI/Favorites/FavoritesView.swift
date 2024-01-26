import SwiftUI

struct FavoritesView: View {
  
  @StateObject var viewModel = FavoritesViewModel()
  
  var body: some View {
    ScrollView {
      if viewModel.displayedCards.isEmpty {
        FavoritesPlaceholderView()
      } else {
        ForEach(viewModel.displayedCards) { card in
          NavigationLink(destination: DetailView(viewModel: DetailViewModel(card: card))) {
            CardRow(card: card)
          }
        }
      }
    }
    .onAppear() {
      viewModel.updateDisplayedCards()
    }
    .navigationTitle("Favorites")
    .background(Color.lightBeige)
  }
}

struct FavoritesView_Previews: PreviewProvider {
  static var previews: some View {
    FavoritesView()
  }
}
