import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = viewModel
        tableView.register(UINib(nibName: "TitleViewCell", bundle: nil), forCellReuseIdentifier: "TitleViewCell")
    }

}
