import Foundation
import Combine

struct API {
    let Url = URL(string: "http://43.200.120.78:8080/users")!
    
    func loadTodos() -> AnyPublisher<[TodoResponse], Error> {
        URLSession.shared.dataTaskPublisher(for: Url)
            .map{ $0.data }
            .decode(type: [TodoResponse].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    
}

let url = "http://43.200.120.78:8080/register"
