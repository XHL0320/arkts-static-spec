/**
 * Swift equivalent of ArkTS for-of with explicit type annotation (§17.8.1)
 * Case: int explicit type on [Int] -- compile and run (PASS)
 *
 * Swift for-in requires explicit type (var/let with optional type annotation).
 * Swift's type inference also works: `for v in arr` infers Int.
 */
let arr: [Int] = [10, 20, 30, 40, 50]
let expected: [Int] = [10, 20, 30, 40, 50]
var idx: Int = 0
for v: Int in arr {
    if v != expected[idx] {
        fatalError("assertion failed: expected \(expected[idx]) but got \(v)")
    }
    idx += 1
}
if idx != 5 {
    fatalError("assertion failed: expected 5 iterations but got \(idx)")
}
print("verified")
