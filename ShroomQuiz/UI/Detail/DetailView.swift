import SwiftUI

struct DetailView: View {
  let viewModel: DetailViewModel
  
  var body: some View {
    Text(viewModel.title).font(.title)
  }
}

//struct DetailView_Previews: PreviewProvider {
//  static var previews: some View {
//    DetailView()
//  }
//}
