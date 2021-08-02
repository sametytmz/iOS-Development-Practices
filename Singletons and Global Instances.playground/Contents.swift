import UIKit


/// Main Module

extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

extension ApiClient {
    func loadFollower(completion: ([FollowerItem]) -> Void) {}
}

/// Api Module
class ApiClient {
    static let shared = ApiClient()
    
    func execute(_ : URLRequest, completion: (Data) -> Void) {}
}



/// Login Module
struct LoggedInUser {}

class LoginService {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLoginButton() {
        login? { user in
            // show feed screen
        }
    }
}


/// Feed Module
struct FeedItem {}

class FeedService {
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    func load() {
        loadFeed? { loadedItems in
            /// Update ui
        }
    }
}




/// Followers Module
struct FollowerItem {}

class FollowerService {
    var loadFollower: ((([FollowerItem]) -> Void) -> Void)?
    
    func load() {
        loadFollower? { loadedFollwers in
            /// Update ui
        }
    }
}
