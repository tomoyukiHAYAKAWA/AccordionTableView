import UIKit

final class ViewModel: NSObject {
    enum Row {
        case title
        case userName
    }

    private var cells: [Row] = [.title, .userName]
    private var name: String = "ティム・クック"
    private var age: Int = 35

}

// MARK: - UITableViewDataSource
extension ViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch cells[indexPath.row] {
        case .title:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TitleViewCell", for: indexPath) as? TitleViewCell else { return UITableViewCell() }
            return cell
        case .userName:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserNameCell", for: indexPath) as? UserNameCell else { return UITableViewCell() }
            let params = UserNameCell.Params(name: name, age: age)
            cell.configure(params: params)
            return cell
        }
    }
}
