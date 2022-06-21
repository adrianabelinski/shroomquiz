import SwiftUI

struct QuizButtonStyle: ButtonStyle {
  func makeBody(configuration: Self.Configuration) -> some View {
    return configuration.label
      .font(.title2)
      .frame(width: 300, height: 50, alignment: .center)
      .background(Color.gemGreen)
      .foregroundColor(Color.black)
      .cornerRadius(10)
      .padding(7)
  }
}

struct QuizButtonStyle_Previews: PreviewProvider {
  static var previews: some View {
    Button(action: {}) {
      Text("Button with QuizButtonStyle")
    }
    .buttonStyle(QuizButtonStyle())
    .previewLayout(.sizeThatFits)
  }
}
