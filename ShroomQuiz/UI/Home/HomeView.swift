import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink(destination: QuizView()) {
          Text("PLAY")
        }.buttonStyle(HomeButtonStyle(buttonColor: .rubyRed))
        NavigationLink(destination: AboutView()) {
          Text("ABOUT")

        }.buttonStyle(HomeButtonStyle(buttonColor: .appYellow))
        NavigationLink(destination: FavoritesView()) {
          Text("FAVORITES")
        }
        .buttonStyle(HomeButtonStyle(buttonColor: .mikuBlue))
        NavigationLink(destination: CatalogView()) {
          Text("CATALOG")
        } .buttonStyle(HomeButtonStyle(buttonColor: .purpleGrape))
      }
      .navigationTitle("ShroomQuiz")
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
