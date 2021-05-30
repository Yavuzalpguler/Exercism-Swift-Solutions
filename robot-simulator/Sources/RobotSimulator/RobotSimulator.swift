class SimulatedRobot {
    
    enum Bearing {
        case north, south, east, west
    }
    
    enum Instructions {
        case turnRight, turnLeft, advance
    }
    var bearing: Bearing
    var coordinates: [Int]
    init() {
        bearing = .north
        coordinates = [0,0]
    }
    
    func orient(_ direction: Bearing) {
        bearing = direction
    }
    
    func turnRight() {
        if bearing == .north {
            bearing = .east
        } else if bearing == .south {
            bearing = .west
        } else if bearing == .west {
            bearing = .north
        } else {
            bearing = .south
        }
    }
    
    func turnLeft() {
        if bearing == .north {
            bearing = .west
        } else if bearing == .west {
            bearing = .south
        } else if bearing == .south {
            bearing = .east
        } else {
            bearing = .north
        }
    }
    
    func at(x: Int, y: Int) {
        coordinates = [x,y]
    }
    
    func advance() {
        if bearing == .north {
            coordinates = [coordinates[0], coordinates[1] + 1]
        } else if bearing == .south {
            coordinates = [coordinates[0], coordinates[1] - 1]
        } else if bearing == .east {
            coordinates = [coordinates[0]+1, coordinates[1]]
        } else {
            coordinates = [coordinates[0] - 1, coordinates[1]]
        }
        
    }
    
    func evaluate(_ input: String) {
        for i in input {
            if i == "R" {
                self.turnRight()
            } else if i == "L" {
                self.turnLeft()
            } else {
                self.advance()
            }
        }
    }
    
    func instructions(_ input: String) -> [Instructions] {
        var result = [Instructions]()
        for i in input {
            if i == "R" {
                result.append(.turnRight)
            } else if i == "L" {
                result.append(.turnLeft)
            } else {
                result.append(.advance)
            }
        }
        return result
    }
    
    func place(x: Int, y: Int, direction: Bearing) {
        coordinates = [x, y]
        bearing = direction
    }
    
}
