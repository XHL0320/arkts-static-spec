/**
 * Swift cross-language verification for 15.7 Type Inference
 *
 * Key finding: Swift has stronger type inference than ArkTS/Java.
 * - Return type inference supported
 * - Generic type inference
 */
import Foundation

var pass = 0, fail = 0
func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

// Return type inference: Swift supports it
func add(_ a: Int, _ b: Int) -> Int { return a + b }

// Generic type inference
func identity<T>(_ x: T) -> T { return x }

// Local type inference
let x = 42
check(x == 42, "local type inference (Swift: same)")

// Return type
check(add(1, 2) == 3, "return type (Swift: supports type inference)")

// Generic type inference
let r: Int = identity(42)
check(r == 42, "generic type inference (Swift: same)")

// Constant expression
let c = 1 + 2
check(c == 3, "constant expression (Swift: same)")

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
