import UIKit
///Genrics
///custom protocol
protocol AcceptAdd { static func + (lhs: Self , rhs: Self) -> Self}

extension Int: AcceptAdd {}
extension String: AcceptAdd {}
extension Double : AcceptAdd {}


func addValues<T: AcceptAdd> (_ x: T , _ y: T) -> T {
    return x+y
}

print(addValues(5, 4))
print(addValues(5.3, 4.3))
print(addValues("Soda", " CEO Of Apple"))


///---------------------------------------------------------------------------------------------------------------///
