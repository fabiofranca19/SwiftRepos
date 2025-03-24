import UIKit

protocol SwiftRepoListCoordinating: AnyObject {
    func openNextScreen()
}

final class SwiftRepoListCoordinator {
    private let navigation: Navigating

    init(navigation: Navigating) {
        self.navigation = navigation
    }
}

// MARK: - SwiftRepoListCoordinating
extension SwiftRepoListCoordinator: SwiftRepoListCoordinating {
    func openNextScreen() {
    }
}
