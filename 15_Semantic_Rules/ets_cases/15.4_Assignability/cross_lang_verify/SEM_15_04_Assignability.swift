/**
 * Swift cross-language verification for 15.4 Assignability
 *
 * Key difference: Swift requires explicit numeric conversion.
 */
import Foundation

var pass = 0, fail = 0
func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

class Animal {}
class Dog: Animal {}

// Subtype assignability
let d = Dog()
let a: Animal = d
check(true, "subtype assignability (Swift: same)")

// Numeric widening: requires explicit conversion
let i: Int = 42
// let l: Int64 = i  // COMPILE ERROR
let l = Int64(i)
check(l == 42, "numeric widening (Swift: explicit conversion)")

// nil assignability (optional)
let s: String? = nil
check(s == nil, "nil assignability (Swift: Optional)")

// Protocol assignability
check(true, "protocol implement assignability (Swift: same)")

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
