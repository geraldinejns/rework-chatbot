import Foundation
class ConversationDataSource {
    
 
    /// The number of Messages in the conversation
             var messageCount = 0
             var messages = [Message]()
              /// Add a new question to the conversation
              func add(question: String) {
                  print("Asked to add question: \(question)")
                  messageCount += 1
                  
                  let message = Message(date: Date(), text: question, type: .question)
                  messages.append(message)
              }
              
              /// Add a new answer to the conversation
              func add(answer: String) {
                  print("Asked to add answer: \(answer)")
                  messageCount += 1
                  
                  let message = Message(date: Date(), text: answer, type: .answer)
                  messages.append(message)
              }
              
              /// The Message at a specific point in the conversation
              func messageAt(index: Int) -> Message {
                  return messages[index]
              }
          }
