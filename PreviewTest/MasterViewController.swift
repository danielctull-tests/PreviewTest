
import UIKit

class MasterViewController: UITableViewController {

	

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

