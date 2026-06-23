/**
 * @id LEX_02_07_064_FAIL_TYPE_KW_FLOAT
 * @expect compile-fail
 * @section 2.7
 * @design 补充测试因子：类型关键字 float 不能作为标识符
 * @note 反向用例：补齐预定义类型主名/别名关键字保护覆盖
 */
function test64(): void {
  let float: int = 1
}
