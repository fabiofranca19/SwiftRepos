import UIKit

extension UIView {
    static func makeForAutoLayout<T: UIView>() -> T {
        let view = T()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
