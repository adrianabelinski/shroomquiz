import Foundation

class QuizViewModel: ObservableObject {
  @Published var displayedCard = CardRepository().getRandomCard()
  
  
}
