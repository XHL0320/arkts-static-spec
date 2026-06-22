/**
 * @id CON_06_01_006_PASS_CALL_ARGUMENT_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Call context: 函数调用实参类型与形参类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function takeInt(value: int): void {
  let x: int = value
}

function takeString(value: string): void {
  let s: string = value
}

function takeBool(value: boolean): void {
  let b: boolean = value
}

function testCallArgumentBasic(): void {
  takeInt(42)
  takeString("hello")
  takeBool(true)
}
