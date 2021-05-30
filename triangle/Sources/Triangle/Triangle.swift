//Solution goes in Sources
struct Triangle {
    
    enum TriangleType: String {
       case Equilateral = "Equilateral"
       case Isosceles = "Isosceles"
       case Scalene = "Scalene"
       case ErrorKind = "ErrorKind"
    }
    
    let kind: String
    
    init(_ a: Double, _ b: Double, _ c: Double) {
        let sortedSides = [a, b, c].sorted()
        switch (sortedSides[0], sortedSides[1], sortedSides[2]) {
            case (let a, let b, let c) where a == 0 || a + b <= c:
                kind = TriangleType.ErrorKind.rawValue
            case (let a, _, let c) where a == c:
                kind = TriangleType.Equilateral.rawValue
            case (let a, let b, let c) where b == c || b == a:
                kind = TriangleType.Isosceles.rawValue
            default:
                kind = TriangleType.Scalene.rawValue
        }
    }
}
