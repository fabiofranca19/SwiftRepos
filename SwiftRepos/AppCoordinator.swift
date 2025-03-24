import UIKit

public protocol Navigating {
    func pushViewController(_ viewController: UIViewController, animated: Bool)
    func popViewController(animated: Bool)
}

final class AppCoordinator {
    private weak var navigationController: UINavigationController?
    
    init(
        _ navigationController: UINavigationController
    ) {
        self.navigationController = navigationController
    }
    
    func start() {
        let swiftRepoController = SwiftRepoListFactory.make(
            navigation: self
        )
        navigationController?.setViewControllers([swiftRepoController], animated: false)
    }
}

// MARK: - Navigating
extension AppCoordinator: Navigating {
    func pushViewController(_ viewController: UIViewController, animated: Bool) {
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func popViewController(animated: Bool) {
        navigationController?.popViewController(animated: animated)
    }
}
