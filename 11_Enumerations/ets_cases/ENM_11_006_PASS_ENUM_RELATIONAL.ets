/**
 * @id ENM_11_006_PASS_ENUM_RELATIONAL
 * @expect compile-pass
 * @section 11
 * @design 枚举类型支持关系运算符
 * @note spec: relational operators can be applied to enum types
 */
enum Color { Red, Green, Blue }
let r: boolean = Color.Red < Color.Blue
let s: boolean = Color.Green >= Color.Red
