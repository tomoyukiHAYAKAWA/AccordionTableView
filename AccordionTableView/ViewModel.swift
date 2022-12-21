import UIKit

final class ViewModel: NSObject {
    enum Row {
        case title
    }

    private var cells: [Row] = []

    override init() {
        cells.append(.title)
    }

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
        }
    }
}
