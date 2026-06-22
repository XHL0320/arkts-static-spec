/**
 * @id CON_06_04_01_013_FAIL_DOUBLE_TO_FLOAT
 * @expect compile-fail
 * @section 6.4.1
 * @design double→float 是 narrowing，无隐式 widening，应编译失败
 * @note 反向用例：反向 narrowing 不应编译通过
 */
function testDoubleToFloatFail(): void {
  let d: double = 3.14
  let f: float = d
}
