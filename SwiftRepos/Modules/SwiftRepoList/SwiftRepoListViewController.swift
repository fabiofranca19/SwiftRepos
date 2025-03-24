import UIKit

protocol SwiftRepoListDisplaying: AnyObject {
    func displayRepositories()
}

final class SwiftRepoListViewController: BaseViewController<SwiftRepoListInteracting> {
    private enum Layout {
        enum Size {
//            static let imageHeight: CGFloat = 90.0
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

// MARK: - SwiftRepoListDisplaying
extension SwiftRepoListViewController: SwiftRepoListDisplaying {
    func displayRepositories() {
    }
}
