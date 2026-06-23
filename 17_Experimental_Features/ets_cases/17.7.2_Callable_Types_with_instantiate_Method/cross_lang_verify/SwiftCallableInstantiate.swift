/**
 * Swift equivalent of ArkTS §17.7.2 Callable Types with $_instantiate
 * Swift has NO callable type syntax. Closest equivalent: static factory methods + closures
 */

class SwiftFactory1 {
    var tag: String = ""

    init() {}

    init(t: String) {
        self.tag = t
    }

    // Swift: No $_instantiate. Static factory method as closest equivalent.
    static func create(factory: () -> SwiftFactory1) -> SwiftFactory1 {
        let result = factory()
        result.tag = "created"
        return result
    }

    static func create(factory: () -> SwiftFactory1, tag: String) -> SwiftFactory1 {
        let result = factory()
        result.tag = tag
        return result
    }
}

// MARK: - Test Entry
func main() {
    // 1. Basic factory - explicit closure
    let obj1 = SwiftFactory1.create(factory: { SwiftFactory1() })
    assert(obj1.tag == "created", "FAIL: tag should be created, got \(obj1.tag)")

    // 2. With custom factory
    let obj2 = SwiftFactory1.create(factory: { SwiftFactory1(t: "pre") }, tag: "alpha")
    assert(obj2.tag == "alpha", "FAIL: tag should be alpha, got \(obj2.tag)")

    // 3. Overloaded factory
    let obj3 = SwiftFactory1.create(factory: { SwiftFactory1() })
    assert(obj3.tag == "created", "FAIL: overload no-arg")

    let obj4 = SwiftFactory1.create(factory: { SwiftFactory1() }, tag: "beta")
    assert(obj4.tag == "beta", "FAIL: overload with arg")

    print("SwiftCallableInstantiate: all assertions passed")
}

main()
