import UIKit

final class UIViewExample: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func setup() {

        backgroundColor = .systemBlue
        layer.cornerRadius = 16

    }
}

