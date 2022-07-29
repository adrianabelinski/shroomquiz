import SwiftUI

struct QuizButtonStyle: ButtonStyle {
  func makeBody(configuration: Self.Configuration) -> some View {
    return configuration.label
      .font(.title2.bold())
      .shadow(color: .black.opacity(0.3), radius: 2, x: 1, y: 1)
      .frame(width: 300, height: 50, alignment: .center)
      .background(Color.gemGreen)
      .foregroundColor(Color.white)
      .cornerRadius(10)
      .padding(7)
  }
}

struct QuizButtonStyle_Previews: PreviewProvider {
  static var previews: some View {
    Button(action: {}) {
      Text("Button")
    }
    .buttonStyle(QuizButtonStyle())
    .previewLayout(.sizeThatFits)
  }
}
