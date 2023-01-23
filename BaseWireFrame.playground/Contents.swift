//: A UIKit based Playground for presenting user interface
  
import UIKit
import Combine

class HomeViewModel {
    func viewDidLoad() {
        print("We Are Clean")
    }
}

class BaseWireFrame<T>: UIViewController {
    
    var viewModel: T
    
    lazy var cancellable: Set<AnyCancellable> = {
       return Set<AnyCancellable>()
    }()
    //we can add loader
    // any thing
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    required init(viewModel: T) {
        self.viewModel = viewModel
        super.init(nibName: String(describing: type(of: self)), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func binde(with viewModel: T) {
        preconditionFailure("You Must Ovrrieden For Controller: \(String(describing: type(of: self)))")
    }
}

//implement

class LoginViewController: BaseWireFrame<HomeViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
    }
}
