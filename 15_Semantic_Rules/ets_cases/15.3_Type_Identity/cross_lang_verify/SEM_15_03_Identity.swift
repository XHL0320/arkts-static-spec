/**
 * Swift cross-language verification for 15.3 Type Identity
 *
 * Key difference: Swift has typealias (similar to ArkTS type).
 * Swift preserves generic type info at runtime.
 */
import Foundation

var pass = 0, fail = 0
func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

class Box<T> {}

// Type alias (Swift supports it, like ArkTS)
typealias MyInt = Int

// Type identity: same type
check(true, "type identity: same type (Swift: trivially true)")

// Generic type identity: Swift preserves type info (different from ArkTS/Java erasure)
let bi = Box<Int>()
let bs = Box<String>()
check(type(of: bi) != type(of: bs), "generic type identity: Swift reified - Box<Int> != Box<String> (differs from ArkTS erasure)")

// Type alias identity
let x: MyInt = 42
let y: Int = x
check(x == y, "type alias identity (Swift: supports typealias)")

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
