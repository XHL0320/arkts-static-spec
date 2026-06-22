/**
 * @id CON_06_04_01_015_FAIL_FLOAT_TO_LONG
 * @expect compile-fail
 * @section 6.4.1
 * @design float→long 非 widening 路径，应编译失败
 * @note 反向用例：非 widening 方向不应编译通过
 */
function testFloatToLongFail(): void {
  let f: float = 3.14
  let l: long = f
}
