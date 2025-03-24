import UIKit

enum SwiftRepoListFactory {
    static func make(
        navigation: Navigating
    ) -> UIViewController {
        let service = SwiftRepoListService()
        let coordinator = SwiftRepoListCoordinator(navigation: navigation)
        let presenter = SwiftRepoListPresenter(coordinator: coordinator)
        let interactor = SwiftRepoListInteractor(service: service, presenter: presenter)
        let viewController = SwiftRepoListViewController(interactor: interactor)

        presenter.viewController = viewController

        return viewController
    }
}
