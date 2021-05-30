//Solution goes in Sources
enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}

struct CircularBuffer<T> {
    private let capacity: Int
    private var elements: [T] = []
    private var elementCount: Int = 0

    init(capacity: Int) {
        self.capacity = capacity
    }

    mutating func read() throws -> T {
        guard elementCount > 0 else {
            throw CircularBufferError.bufferEmpty
        }
        elementCount -= 1
        return elements.removeFirst()
    }

    mutating func write(_ input: T) throws {
        guard elementCount < capacity else {
            throw CircularBufferError.bufferFull
        }
        elementCount += 1
        elements.append(input)
    }

    mutating func overwrite(_ input: T) {
        elementCount += 1
        elements.append(input)
        // if members were bigger than space, exile one.
        if elementCount > capacity {
            elementCount -= 1
            elements.removeFirst()
        }
    }

    mutating func clear() {
        elements.removeAll()
        elementCount = 0
    }
}
