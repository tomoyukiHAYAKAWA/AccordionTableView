import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TitleCell", bundle: nil), forCellReuseIdentifier: "TitleCell")
        tableView.register(UINib(nibName: "UserNameCell", bundle: nil), forCellReuseIdentifier: "UserNameCell")
    }

}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch viewModel.cells[indexPath.row] {
        case .title:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TitleCell", for: indexPath) as? TitleCell else { return UITableViewCell() }
            return cell
        case .userName:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserNameCell", for: indexPath) as? UserNameCell else { return UITableViewCell() }
            let params = UserNameCell.Params(name: viewModel.name, age: viewModel.age)
            cell.configure(params: params)
            return cell
        }
    }
}
