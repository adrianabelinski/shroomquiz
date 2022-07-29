import SwiftUI

struct AboutView: View {
  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 10) {
        Text("ShroomQuiz is a mushroom guessing game for mycelium-loving maniacs of all kinds. Study your favorites mushrooms, and learn more about their characteristics, edibility, and where they grow.")
          .bodyStyle()
          
        Text("Disclaimer")
          .headerStyle()
        
        Text("Use this information at your own risk. The information here is used to teach and entertain, but is by no means reviewed by fungi experts. Please don't go picking and chewing on every mushroom you find, because that'd be bad! Consult the pros before you begin any actual foraging.")
          .bodyStyle()
        
        Text("Attributions")
          .headerStyle()
        
        Text("[Giant puffball image](https://commons.wikimedia.org/wiki/File:Calvatia_gigantea.jpg) © Hans Hillewaert")
          .bodyStyle()
        
        Text("[Omphalotus illudens image](https://commons.wikimedia.org/wiki/File:2007-08-05_Omphalotus_illudens_(Schwein.)_Bresinsky_%26_Besl_1018098506.jpg) © Jason Hollinger")
          .bodyStyle()
        
      }
      .padding()
    }
    .navigationTitle("About")
  }
}

struct AboutView_Previews: PreviewProvider {
  static var previews: some View {
    AboutView()
  }
}
