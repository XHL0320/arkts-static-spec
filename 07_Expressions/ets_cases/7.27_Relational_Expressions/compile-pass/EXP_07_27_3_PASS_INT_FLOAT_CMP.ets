/**
 * @id EXP_07_27_3_PASS_INT_FLOAT_CMP
 * @expect compile-pass
 * @section 7.27
 * @design int 与 float 关系比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testIntFloatCmp(): void {
  let a: int = 10; let b: float = 20.5f; let r: boolean = a < b
  console.log(r.toString())
}
