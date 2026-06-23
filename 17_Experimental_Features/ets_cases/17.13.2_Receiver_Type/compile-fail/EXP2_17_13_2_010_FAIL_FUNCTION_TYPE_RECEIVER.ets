/**
 * @id EXP2_17_13_2_010_FAIL_FUNCTION_TYPE_RECEIVER
 * @expect compile-fail
 * @section 17.13.2
 * @design 函数类型不能作为接收者类型 — 会产生 ESE0082
 * @note 反向用例：验证该场景应产生编译时错误
 */
type Callback = (x: number) => number
function decorate(this: Callback): void { let r: number = this(5) }
