/**
 * Swift equivalent of ArkTS EXP2_17_12_001 - Default method via protocol extension
 * Tests: protocol with default implementation via extension, class adopts without override
 * Note: Swift does NOT have default methods in protocols directly.
 *       Swift uses protocol extensions to provide default implementations.
 *       Swift does NOT support private methods in protocol extensions.
 */

protocol Greeter {
    // Protocol only declares the requirement
    func greet() -> String
}

extension Greeter {
    // Extension provides default implementation
    func greet() -> String {
        return "Hello from default"
    }
}

class Person: Greeter {
    var name: String = "Alice"
    // Does not override greet(), uses default from extension
}

// Since Swift doesn't have a "main" function, we use a top-level script
let p = Person()
let result = p.greet()
if result != "Hello from default" {
    fatalError("FAIL: expected 'Hello from default', got '\(result)'")
}
print("PASS: \(result)")
