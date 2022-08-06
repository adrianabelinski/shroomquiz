import SwiftUI

struct HomeView: View {
  
  var body: some View {
    NavigationView {
      ZStack {
        Image("home-background-v2")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .ignoresSafeArea()
          .padding(.top, 20)
          .padding(.bottom, -90)
          .padding(.leading, 250)
        
        VStack {
          NavigationLink(destination: QuizView()) {
            Text("Play")
          }
          .buttonStyle(HomeButtonStyle(buttonColor: .rubyRed))
          
          NavigationLink(destination: AboutView()) {
            Text("About")
          }
          .buttonStyle(HomeButtonStyle(buttonColor: .appYellow))
          
          NavigationLink(destination: FavoritesView()) {
            Text("Favorites")
          }
          .buttonStyle(HomeButtonStyle(buttonColor: .mikuBlue))
          
          NavigationLink(destination: CatalogView()) {
            Text("Catalog")
          }
          .buttonStyle(HomeButtonStyle(buttonColor: .purpleGrape))
        }
        .navigationTitle("ShroomQuiz")
      }
    }
    .navigationViewStyle(.stack)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
