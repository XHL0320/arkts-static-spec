/**
 * @id EXP2_17_13_2_011_FAIL_ENUM_TYPE_RECEIVER
 * @expect compile-fail
 * @section 17.13.2
 * @design 枚举类型不能作为接收者类型 — 会产生 ESE0082
 * @note 反向用例：验证该场景应产生编译时错误
 */
enum Color { RED, GREEN, BLUE }
function describeColor(this: Color): string { return "color" }
