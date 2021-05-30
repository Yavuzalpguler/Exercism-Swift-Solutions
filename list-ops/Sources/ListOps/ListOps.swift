//Solution goes in Sources
struct ListOps {
    static func append<T>(_ source: [T], _ add: [T]) -> [T] {
        var new = source

        for e in add {
            new.insert(e, at: length(new))
        }

        return new
    }

    static func concat<T>(_ sources: [T]...) -> [T] {
        var new = [T]()

        for source in sources {
            new = append(new, source)
        }

        return new
    }

    static func filter<T>(_ source: [T], _ fn: (T) -> Bool) -> [T] {
        var new = [T]()

        for e in source {
            if fn(e) {
                new = append(new, [e])
            }
        }

        return new
    }

    static func length<T>(_ source: [T]) -> Int {
        var len: Int = 0

        for _ in source {
            len += 1
        }

        return len
    }

    static func map<T, S>(_ source: [T], _ fn: (T) -> S) -> [S] {
        var new = [S]()

        for e in source {
            new = append(new, [fn(e)])
        }

        return new
    }

    static func foldLeft<T>(_ source: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var result = accumulated

        for e in source {
            result = combine(result, e)
        }

        return result
    }

    static func foldRight<T>(_ source: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var result = accumulated

        for e in reverse(source) {
            result = combine(e, result)
        }

        return result
    }

    static func reverse<T>(_ source: [T]) -> [T] {
        var new = [T]()

        for e in source {
            new.insert(e, at: new.startIndex)
        }

        return new
    }
}
