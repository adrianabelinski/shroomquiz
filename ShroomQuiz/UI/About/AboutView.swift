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
        
        Text("[Entoloma abortivum image](https://commons.wikimedia.org/wiki/File:Armillaria_gallica_57535.jpg) © Dan Molter")
          .bodyStyle()
        
        Text("[Ganoderma applanatum image](https://commons.wikimedia.org/wiki/File:Ganoderma_applanatum_2010_G1.jpg) © George Chernilevsky")
          .bodyStyle()
        
        Text("[Fistulina hepatica image](https://commons.wikimedia.org/wiki/File:Fistulina_hepatica.JPG) © Jiří Berkovec")
          .bodyStyle()
        
        Text("[Craterellus cornucopioides image](https://commons.wikimedia.org/wiki/File:Craterellus_cornucopioides_JPG1.jpg) © Jean-Pol GRANDMONT")
          .bodyStyle()
        
        Text("[Corn Smut image](https://commons.wikimedia.org/wiki/File:Ustilago_maydis_J1b.jpg) © Jamain")
          .bodyStyle()
        
        Text("[Peniophora albobadia image](https://commons.wikimedia.org/wiki/File:Peniophora_albobadia_196080.jpg) © Patrick Harvey")
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
