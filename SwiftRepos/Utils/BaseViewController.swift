import UIKit

// MARK: - ViewCode
open class BaseViewController<Interactor>: UIViewController, ViewCode {
    let interactor: Interactor
    
    public init(interactor: Interactor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    public required init?(coder aDecoder: NSCoder) { nil }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        buildLayout()
    }
    
    open func buildViewHierarchy() { }
    open func setupConstraints() { }
    open func configureViews() { }
}
