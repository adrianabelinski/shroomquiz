import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink(destination: QuizView()) {
          Text("Play")
        }.buttonStyle(HomeButtonStyle(buttonColor: .rubyRed))
        NavigationLink(destination: AboutView()) {
          Text("About")
        }.buttonStyle(HomeButtonStyle(buttonColor: .yellow))
        NavigationLink(destination: FavoritesView()) {
          Text("Favorites")
        }
        .buttonStyle(HomeButtonStyle(buttonColor: .mikuBlue))
        NavigationLink(destination: ReviewView()) {
          Text("Review")
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
