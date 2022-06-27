import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink(destination: QuizView()) {
          Text("Play")
        }
        NavigationLink(destination: AboutView()) {
          Text("About")
        }
        NavigationLink(destination: FavoritesView()) {
          Text("Favorites")
        }
        NavigationLink(destination: ReviewView()) {
          Text("Review")
        }
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
