import SwiftUI

struct CatalogView: View {
  
  @StateObject var viewModel = CatalogViewModel()
  
  var body: some View {
    ScrollView {
      ForEach(viewModel.displayedCards) { card in
        NavigationLink(destination: DetailView(viewModel: DetailViewModel(card: card))) {
          CardRow(card: card)
        }
      }
    }
    .onAppear() {
      viewModel.updateDisplayedCards()//sets value for displayed cardsp
    }
    .navigationTitle("Catalog")
  }
}

struct CatalogView_Previews: PreviewProvider {
  static var previews: some View {
    CatalogView()
  }
}
