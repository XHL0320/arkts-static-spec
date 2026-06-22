/**
 * @id EXP_07_28_01_001_PASS_INT_EQ
 * @expect compile-pass
 * @section 7.28.1
 * @design int 类型相等比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testIntEq(): void {
  let a: int = 5; let b: int = 5; let c: int = 10
  let e1: boolean = a == b; let e2: boolean = a != c
  let e3: boolean = a === b; let e4: boolean = a !== c
  console.log(e1.toString(), e2.toString(), e3.toString(), e4.toString())
}
