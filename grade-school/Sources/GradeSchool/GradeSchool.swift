//Solution goes in Sources
/*Add a student's name to the roster for a grade
"Add Jim to grade 2."
"OK."
Get a list of all students enrolled in a grade
"Which students are in grade 2?"
"We've only got Jim just now."
Get a sorted list of all students in all grades. Grades should sort as 1, 2, 3, etc., and students within a grade should be sorted alphabetically by name.
"Who all is enrolled in school right now?"
"Grade 1: Anna, Barb, and Charlie. Grade 2: Alex, Peter, and Zoe. Grade 3…" */

import Foundation

class GradeSchool {
    
    var roster: [Int: [String]] = [:]
    
    var sortedRoster : [Int: [String]] {
        var result : [Int: [String]] = [:]
        
        let sortedKeys = roster.keys.sorted(by: <)
        
        for key in sortedKeys {
            result[key] = roster[key]?.sorted(by: <)
        }
        return result
    }
    
    func addStudent(_ name: String, grade: Int) {
        if var names = roster[grade] {
            if !names.contains(name) {
                names.append(name)
                roster[grade] = names
            }
        } else {
            roster[grade] = [name]
        }
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}
