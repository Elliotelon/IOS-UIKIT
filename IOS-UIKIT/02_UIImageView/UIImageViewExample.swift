import UIKit

final class UIImageViewExample: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    convenience init() {
        self.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        image = UIImage(systemName: "star.fill")
        tintColor = .systemYellow
        contentMode = .scaleAspectFit
        backgroundColor = .systemGray6
    }
}
