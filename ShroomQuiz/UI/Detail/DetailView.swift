import SwiftUI

struct DetailView: View {
  let viewModel: DetailViewModel
  
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        Text(viewModel.scientificName)
          .font(.title2)
          .foregroundColor(.textGrey)

        CardImage(
          imageName: viewModel.imageName,
          overlayText: nil,
          overlayMessageType: nil,
          showingDetailIcons: true,
          isFavorited: viewModel.isFavorited, //parameter takes in a boolean
          favoriteButtonAction: {} //this parameter takes in a function/closure
        )
        
        Text(viewModel.description)
        //  .multilineTextAlignment(.center)
          .lineSpacing(1)
          .font(Font.custom("Helvetica", size: 20, relativeTo: .title3))
          .padding(.horizontal, 10)
          .padding(.vertical, 10)
          .foregroundColor(.textGrey)

        Button(action: viewModel.openWikipedia, label: {
          HStack {
            Spacer()
            Text("Wikipedia")
              .font(.title2)
              .frame(width: 300, height: 50, alignment: .center)
              .background(Color.gemGreen)
              .foregroundColor(Color.black)
              .cornerRadius(10)
              .padding(7)
           Spacer()
          }
        })
      }
      .padding([.horizontal, .bottom])
    }
    .navigationTitle(viewModel.commonName)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(viewModel: DetailViewModel(card: CardRepository().cards.first!))
  }
}
