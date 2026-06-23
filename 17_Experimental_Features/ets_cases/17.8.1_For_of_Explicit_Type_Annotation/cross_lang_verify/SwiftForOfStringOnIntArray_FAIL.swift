/**
 * Swift equivalent of ArkTS for-of with explicit type annotation (§17.8.1)
 * Case: String explicit type on [Int] -- should FAIL to compile
 *
 * Swift error: Cannot convert value of type 'Int' to expected element type 'String'
 */
// This would cause compile error:
// let arr: [Int] = [1, 2, 3]
// for s: String in arr {  // ERROR: Cannot convert value of type 'Int' to expected element type 'String'
//     print(s)
// }
