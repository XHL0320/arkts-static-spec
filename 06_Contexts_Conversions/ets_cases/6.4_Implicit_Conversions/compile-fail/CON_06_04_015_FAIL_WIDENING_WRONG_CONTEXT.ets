/**
 * @id CON_06_04_015_FAIL_WIDENING_WRONG_CONTEXT
 * @expect compile-fail
 * @section 6.4
 * @design 在非赋值类上下文中使用 widening 的无效方式（composite literal 中错误类型）
 * @note 反向用例：对象字面量中不兼容类型的字段值应编译失败
 */
interface Data {
  value: int
}

function testWideningWrongContextFail(): void {
  let d: Data = { value: "not a number" }
}
