//Solution goes in Sources
func flattenArray<T>(_ list : [Any?]) -> [T]  {
    var result = [T]()
    for element in list {
        if let e = element as? [Any?] {
            result += flattenArray(e) //Should've used recursive
            continue
        }
        if let e = element as? T  {
            result.append(e)
            continue
        }
    }

    return result
}
