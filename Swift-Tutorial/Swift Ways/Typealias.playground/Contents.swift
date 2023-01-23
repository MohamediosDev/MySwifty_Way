import UIKit
import Foundation




//=================================================================== This TypeAlias ==========================================================================================

//MARK: -> Some Examples
typealias ComplationHandler<T> = (Result<T , Error>) -> Void
typealias TableViewMethods = UITableViewDelegate & UITableViewDataSource // and any methods
typealias CollectionViewMethods = UICollectionViewDelegate & UICollectionViewDataSource & UICollectionViewDelegateFlowLayout // and any methods

func fetchData(complation: @escaping ComplationHandler<String>) {
    let data = "This Complation Ya man"
    complation(.success(data))
}

//=================================================================== Implementation ==========================================================================================

fetchData { result in
    switch result {
    case .success(let data):
        print(data)
    case .failure(_): break
    }
}
