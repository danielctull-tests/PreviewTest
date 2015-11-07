
import UIKit

class MasterViewController: UITableViewController {

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		super.prepareForSegue(segue, sender: sender)

		print(sender, segue.destinationViewController)

		guard
			let cell = sender as? UITableViewCell,
			let indexPath = tableView.indexPathForCell(cell),
			let detail = segue.destinationViewController as? DetailViewController
		else {
			return
		}

		detail.indexPath = indexPath
	}

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 30
	}

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

		guard let cell = tableView.dequeueReusableCellWithIdentifier("cell") else {
			return UITableViewCell()
		}

		cell.textLabel?.text = "\(indexPath.row)"
		return cell
	}
}

