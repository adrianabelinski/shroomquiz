import SwiftUI

struct HomeButtonStyle: ButtonStyle {
  
  let buttonColor: Color
  
  func makeBody(configuration: Self.Configuration) -> some View {
    return configuration.label
      .font(.title.bold())
      .shadow(color: .black.opacity(0.3), radius: 2, x: 1, y: 1)
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
      Text("Button")
    }
    .buttonStyle(HomeButtonStyle(buttonColor: .mikuBlue))
    .previewLayout(.sizeThatFits)
  }
}
