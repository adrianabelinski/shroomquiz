import SwiftUI

struct BodyText: View {
  let text: String
  
  init(_ text: String) {
    self.text = text
  }
  
  var body: some View {
    Text(text)
      .lineSpacing(1)
      .font(Font.custom("Helvetica", size: 20, relativeTo: .title3))
      .foregroundColor(.textGrey)
  }
}

struct BodyText_Previews: PreviewProvider {
  static var previews: some View {
    BodyText("blah")
  }
}
