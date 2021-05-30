//Solution goes in Sources
import Foundation

struct Meetup {
    let year: Int
    let month: Int

    func day(_ weekday: Int, which: String) -> String {
        var weekdayOccurrences: [Int] = []
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        for day in 1...31 {
            guard let date = dateFormatter.date(from: "\(year)-\(String(format: "%02d", month))-\(String(format: "%02d", day))") else { continue }
            if weekday == Calendar.current.component(.weekday, from: date) {
                weekdayOccurrences.append(day)
            }
        }
        var day = 0
        switch which {
        case "1st":
            day = weekdayOccurrences[0]
        case "2nd":
            day = weekdayOccurrences[1]
        case "3rd":
            day = weekdayOccurrences[2]
        case "4th":
            day = weekdayOccurrences[3]
        case "last":
            day = weekdayOccurrences.last ?? 0
        case "teenth":
            day = weekdayOccurrences.first(where: { [13, 14, 15, 16, 17, 18, 19].contains($0) }) ?? 0
        default:
            break
        }
        let date = dateFormatter.date(from: "\(year)-\(String(format: "%02d", month))-\(String(format: "%02d", day))") ?? Date()
        return dateFormatter.string(from: date)
    }
}
