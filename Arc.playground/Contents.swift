import UIKit


///No Problem When Dealoacting
class MyClass {
    var myInt: Int = 8

    deinit {
        print("My Class Was DeInit")
    }
}

var first: MyClass? = MyClass()
var second = first
var third = first

first = nil
second = nil
third = nil



/// Arc
class Child {
    deinit {
        print("Child Removing from memory")
    }
}

class Parent {
    var child = Child()
    deinit {
        print("Parent Removeng From Memory")
    }
}

var mom: Parent? = Parent()

mom = nil

//[ mom ] --> [ var child ] --> [ Child ]
//         1                 1

// if mom == nil
//[ mom ]     [ var child ]     [ Child ]
//         0                 1


//======================================================
///Found Problem When Dealoacting
/// This Retain Cycle
/// We Will put weak to break another strong refernce
// Or unOwend
class Job {
    weak var person: Person?
    deinit {
        print("person Is Removed From Memory")
    }
}
class Person {
     var job: Job?
    deinit {
        print("Job Is Removed From Memory")
    }
}
var soda: Person? = Person()
var dev: Job? = Job()

soda?.job = dev
dev?.person = soda
soda = nil
dev = nil

