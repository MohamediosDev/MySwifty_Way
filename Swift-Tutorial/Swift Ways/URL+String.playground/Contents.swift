import UIKit

let url1: URL = URL(string: "www.google.com")!

extension URL: ExpressibleByStringLiteral {
    public init(stringLiteral value: StaticString) {
        self.init(string: "\(value)")!
    }
}


let url2: URL = "www.google.com"

print(url2)
