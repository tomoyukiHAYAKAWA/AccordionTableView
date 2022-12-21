import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = viewModel
        tableView.register(UINib(nibName: "TitleCell", bundle: nil), forCellReuseIdentifier: "TitleCell")
        tableView.register(UINib(nibName: "UserNameCell", bundle: nil), forCellReuseIdentifier: "UserNameCell")
    }

}
