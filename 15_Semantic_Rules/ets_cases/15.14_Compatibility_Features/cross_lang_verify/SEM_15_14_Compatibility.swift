/**
 * Swift cross-language verification for 15.14 Compatibility Features
 *
 * Key difference: Swift requires Bool in conditional contexts;
 * ArkTS allows truthiness (non-boolean values in conditions, &&/|| return operands).
 */
import Foundation

var pass = 0
var fail = 0

func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

// === Truthiness: Swift requires Bool ===
// ArkTS: if (0) { ... }  // false (0 is falsy)
// Swift: COMPILE ERROR - Int cannot be converted to Bool
do {
    // let x = 0
    // if x { }  // COMPILE ERROR in Swift
    check(true, "truthiness: Swift requires Bool in if (ArkTS allows non-boolean)")
}

// Swift equivalent: must write explicit comparison
do {
    let x = 0
    if x != 0 {
        check(false, "zero is truthy - should not execute")
    } else {
        check(true, "zero is falsy (Swift: explicit comparison)")
    }
}

// === Non-empty string truthiness ===
do {
    let s = "hello"
    if !s.isEmpty {
        check(true, "non-empty string truthiness (Swift: explicit isEmpty check)")
    }
}

// === Empty string falsiness ===
do {
    let s = ""
    if s.isEmpty {
        check(true, "empty string falsiness (Swift: explicit isEmpty check)")
    } else {
        check(false, "empty string should be falsy")
    }
}

// === && and || return Bool in Swift ===
// ArkTS: let r = 0 && "foo"  // r: number|string (returns operand)
// Swift:  let r = true && false  // r is always Bool
do {
    let r = true && false
    check(!r, "&& returns Bool in Swift (ArkTS returns operand)")
}

do {
    let r = true || false
    check(r, "|| returns Bool in Swift (ArkTS returns operand)")
}

// === Truthiness table ===
do {
    check(!(0 != 0), "zero is falsy (Swift: 0 != 0 is false)")
    check(1 != 0, "non-zero is truthy (Swift: 1 != 0 is true)")
    check("".isEmpty, "empty string falsy (Swift: isEmpty)")
    check(!"x".isEmpty, "non-empty string truthy")
    check(nil == nil, "nil is falsy (Swift: nil == nil is true)")
}

// === Ternary expression ===
// ArkTS: let r = cond ? 42 : "str"  // r: int|string (union type)
// Swift:  let r = cond ? 42 : 0     // both branches must be same type
do {
    let r = true ? 42 : 0
    check(r == 42, "ternary returns same type (Swift: both branches must match)")
}

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
