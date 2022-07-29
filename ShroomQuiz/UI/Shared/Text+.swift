import SwiftUI

extension Text {
  func bodyStyle() -> some View {
    self
      .lineSpacing(1)
      .font(Font.custom("Helvetica", size: 20, relativeTo: .title3))
      .foregroundColor(.textGrey)
  }
  
  func headerStyle() -> some View {
    self
      .font(.title)
      .bold()
  }
}
