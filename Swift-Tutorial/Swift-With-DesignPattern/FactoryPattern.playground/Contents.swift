import UIKit


protocol Computer {
    func aboutComputer() -> String
}


struct OperatingSystem {

    enum SystemType: String {
        case Hp
        case IBM
        case Mac
        case DELL
    }
    var version: Int
    var type: SystemType
}

struct HP: Computer {
    var system: OperatingSystem
    
    init(system: OperatingSystem){
        self.system = system
    }
    
    func aboutComputer() -> String {
        return "HP: \(system.type.rawValue) \(system.version)"
    }
}

struct IBM: Computer {
    var system: OperatingSystem
    
    init(system: OperatingSystem){
        self.system = system
    }
    
    func aboutComputer() -> String {
        return "IBM: \(system.type.rawValue) \(system.version)"
    }
}

struct Mac: Computer {
    var system: OperatingSystem
    
    init(system: OperatingSystem){
        self.system = system
    }
    
    func aboutComputer() -> String {
        return "Mac: \(system.type.rawValue) \(system.version)"
    }
}

struct DELL: Computer {
    var system: OperatingSystem
    
    init(system: OperatingSystem){
        self.system = system
    }
    
    func aboutComputer() -> String {
        return "DELL: \(system.type.rawValue) \(system.version)"
    }
}


struct ComputerFactory {
    static func makeComputer(system: OperatingSystem) -> Computer {
        switch system.type {
        case .Hp:
            return HP(system: system)
        case .IBM:
            return IBM(system: system)
        case .Mac:
            return Mac(system: system)
        case .DELL:
            return DELL(system: system)
        }
    }
}


let hpComputer = ComputerFactory.makeComputer(system: OperatingSystem(version: 19, type: .Hp))

print(hpComputer.aboutComputer())
