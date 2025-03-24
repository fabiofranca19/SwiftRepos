protocol SwiftRepoListPresenting: AnyObject {
    func presentRepositories()
}

final class SwiftRepoListPresenter {
    private let coordinator: SwiftRepoListCoordinating
    weak var viewController: SwiftRepoListDisplaying?

    init(coordinator: SwiftRepoListCoordinating) {
        self.coordinator = coordinator
    }
}

// MARK: - SwiftRepoListPresenting
extension SwiftRepoListPresenter: SwiftRepoListPresenting {
    func presentRepositories() {
        viewController?.displayRepositories()
    }
}
