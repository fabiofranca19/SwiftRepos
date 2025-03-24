import Foundation

protocol SwiftRepoListInteracting: AnyObject {
    func fetchRepositories()
}

final class SwiftRepoListInteractor {
    private let service: SwiftRepoListServicing
    private let presenter: SwiftRepoListPresenting

    init(service: SwiftRepoListServicing, presenter: SwiftRepoListPresenting) {
        self.service = service
        self.presenter = presenter
    }
}

// MARK: - SwiftRepoListInteracting
extension SwiftRepoListInteractor: SwiftRepoListInteracting {
    func fetchRepositories() {
    }
}
