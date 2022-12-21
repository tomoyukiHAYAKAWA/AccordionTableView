import UIKit

final class UserNameCell: UITableViewCell {

    struct Params {
        let name: String
        let age: Int
        init(name: String, age: Int) {
            self.name = name
            self.age = age
        }
    }

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var ageLabel: UILabel!

    func configure(params: Params) {
        nameLabel.text = params.name
        ageLabel.text = String("\(params.age) 歳")
    }
}
