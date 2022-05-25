import SwiftUI

@main
struct ShroomQuizApp: App {
  var body: some Scene {
    WindowGroup {
      TabView{
        QuizView()
          .tabItem {
            Label("Quiz", systemImage: "play.fill")
          }
        AboutView()
          .tabItem {
            Label("About", systemImage: "info.circle.fill")
          }
      }
    }
  }
}
