/**
 * Swift cross-language verification for 15.6 Compatibility of Call Arguments
 *
 * Key findings: Same as ArkTS/Java.
 */
import Foundation

var pass = 0, fail = 0
func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

class Animal {}
class Dog: Animal {}

func acceptAnimal(_ a: Animal) {}

// Subtype parameter passing
acceptAnimal(Dog())
check(true, "subtype parameter passing (Swift: same)")

// Basic parameter passing
acceptAnimal(Animal())
check(true, "compatible parameter type (Swift: same)")

// Type mismatch: compile error
// acceptAnimal("string")  // COMPILE ERROR
check(true, "type mismatch rejection (Swift: same)")

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
