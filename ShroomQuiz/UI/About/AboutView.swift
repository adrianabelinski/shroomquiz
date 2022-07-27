import SwiftUI

struct AboutView: View {
  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 10) {
        BodyText("ShroomQuiz is a mushroom guessing game for mycelium-loving maniacs of all kinds. Study your favorites mushrooms, and learn more about their characteristics, edibility, and where they grow.")
          
        Text("Disclaimer")
          .font(.title)
          .bold()
          .foregroundColor(Color.rubyRed)
        BodyText("Use this information at your own risk. The information here is used to teach and entertain, but is by no means reviewed by fungi experts. Please don't go picking and chewing on every mushroom your find, because that'd be bad! Consult the pros before you begin any actual foraging.")
        
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
