
import UIKit

class DetailViewController: UIViewController {

	@IBOutlet private var indexPathLabel: UILabel? {
		didSet {
			updateIndexPathLabel()
		}
	}
	var indexPath: NSIndexPath? {
		didSet {
			updateIndexPathLabel()
		}
	}
	func updateIndexPathLabel() {
		indexPathLabel?.text = "\(indexPath?.row)"
	}

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
