/**
 * @id CON_06_04_01_012_FAIL_LONG_TO_INT
 * @expect compile-fail
 * @section 6.4.1
 * @design long→int 是 narrowing，无隐式 widening，应编译失败
 * @note 反向用例：反向 narrowing 不应编译通过
 */
function testLongToIntFail(): void {
  let l: long = 100
  let i: int = l
}
