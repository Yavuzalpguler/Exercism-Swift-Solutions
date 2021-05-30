//Solution goes in Sources
import Foundation

struct Clock : CustomStringConvertible, Equatable {
    let hours: Int
    let minutes: Int
    
    init(hours: Int = 0, minutes: Int = 0) {
        let minutesinDay = 60 * 24
        var totalMinutes = (hours * 60 + minutes) % minutesinDay
        if totalMinutes < 0 {
            totalMinutes += minutesinDay
        }
        (self.hours, self.minutes) = (totalMinutes / 60, totalMinutes % 60)
    }
    
    func add(minutes: Int) -> Clock {
        Clock(hours: hours, minutes: self.minutes + minutes)
    }
    
    func subtract(minutes: Int) -> Clock {
        add(minutes: -minutes)
    }

    var description: String {
        String(format: "%02d:%02d", hours, minutes)
    }
}
