
import UIKit

class DetailViewController: UIViewController {

	@IBOutlet private var label: UILabel?

	func updateLabel(size: CGSize) {
		label?.text = "Size: \(size)"
	}

	override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
		updateLabel(size)
	}

	override func viewDidLayoutSubviews() {
		updateLabel(view.bounds.size)
	}
}
