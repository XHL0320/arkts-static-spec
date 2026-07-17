/**
 * @id ENM_11_013_RUNTIME_ENUM_ARITHMETIC
 * @expect runtime
 * @section 11
 * @design 枚举值参与算术运算隐式转int
 * @note spec: Color.Red + 1 is valid via implicit conversion
 */
enum Color { Red, Green, Blue }
function main(): void {
    let x: int = Color.Red + 1
    if (x != 1) { throw new Error("enum arithmetic failed") }
    console.log("verified")
}
