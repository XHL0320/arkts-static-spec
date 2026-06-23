/**
 * Swift equivalent of ArkTS for-of with explicit type annotation (§17.8.1)
 * Case: String explicit type on [String] -- compile and run (PASS)
 */
let arr: [String] = ["hello", "world", "arkts"]
var result: String = ""
for s: String in arr {
    result += s
}
let expected: String = "helloworldarkts"
if result != expected {
    fatalError("assertion failed: expected \(expected) but got \(result)")
}
print("verified")
