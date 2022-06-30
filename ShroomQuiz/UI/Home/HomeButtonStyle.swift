import SwiftUI

struct HomeButtonStyle: ButtonStyle {
  
  let buttonColor: Color
  
  func makeBody(configuration: Self.Configuration) -> some View {
    return configuration.label
      .font(.title2)
      .frame(width: 300, height: 50, alignment: .center)
      .background(buttonColor)
      .foregroundColor(Color.black)
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
