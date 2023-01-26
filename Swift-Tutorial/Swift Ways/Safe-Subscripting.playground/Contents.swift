import UIKit
import Foundation

let data = [1,2,3,4]
extension Collection {
    subscript (safeIndex: Index) -> Element? {
        if indices.contains(safeIndex) {
            return self[safeIndex]
        } else {
         debugPrint("[]")
        }
    }
}

data[safeIndex: 9]
