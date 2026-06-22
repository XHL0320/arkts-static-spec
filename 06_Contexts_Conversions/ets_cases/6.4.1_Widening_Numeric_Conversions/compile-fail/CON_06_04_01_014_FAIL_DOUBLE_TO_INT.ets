/**
 * @id CON_06_04_01_014_FAIL_DOUBLE_TO_INT
 * @expect compile-fail
 * @section 6.4.1
 * @design double→int 非 widening 路径，应编译失败
 * @note 反向用例：非 widening 方向不应编译通过
 */
function testDoubleToIntFail(): void {
  let d: double = 3.14
  let i: int = d
}
