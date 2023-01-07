import UIKit

final class ViewModel: NSObject {
    enum Row {
        case title
        case userName
    }

    private(set) var cells: [Row] = [.title, .userName]
    private(set) var name: String = "ティム・クック"
    private(set) var age: Int = 35

}
