import SwiftUI

struct FavoritesView: View {
  
  @StateObject var viewModel = FavoritesViewModel()
  
  var body: some View {
    ScrollView {
      ForEach(viewModel.displayedCards) { card in
        NavigationLink(destination: DetailView(viewModel: DetailViewModel(card: card))) {
          CardRow(card: card)
        }
      }
    }
    .onAppear() {
      viewModel.updateDisplayedCards()//sets value for displayed cards
    }
    .navigationTitle("Favorites")
  }
}

struct FavoritesView_Previews: PreviewProvider {
  static var previews: some View {
    FavoritesView()
  }
}
