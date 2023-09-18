import SwiftUI

struct FavoritesPlaceholderView: View {
  var body: some View {
    VStack {
      Image("favorites-bucket")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .ignoresSafeArea()
      Text("When you press the star button on a card, it will show up here.")
    }
  }
}

struct FavoritesPlaceholderView_Previews: PreviewProvider {
  static var previews: some View {
    FavoritesPlaceholderView()
  }
}
