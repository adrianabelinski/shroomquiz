import SwiftUI

struct HomeButtonStyle: ButtonStyle {
  
  let buttonColor: Color
  
  func makeBody(configuration: Self.Configuration) -> some View {
    return configuration.label
      .font(.title.bold())
      .frame(width: 300, height: 65, alignment: .center)
      .background(buttonColor)
      .foregroundColor(Color.white)
      .cornerRadius(10)
      .padding(7)
  }
}

struct HomeButtonStyle_Previews: PreviewProvider {
  static var previews: some View {
    Button(action: {}) {
      Text("Button with HomeButtonStyle")
    }
    .buttonStyle(HomeButtonStyle(buttonColor: .mikuBlue))
    .previewLayout(.sizeThatFits)
  }
}
