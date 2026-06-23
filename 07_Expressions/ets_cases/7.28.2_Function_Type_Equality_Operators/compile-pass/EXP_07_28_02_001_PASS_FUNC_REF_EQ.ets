/**
 * @id EXP_07_28_02_001_PASS_FUNC_REF_EQ
 * @expect compile-pass
 * @section 7.28.2
 * @design 同一函数引用相等
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function foo(): void {}
function testFuncRefEq(): void {
  let e1: boolean = foo == foo
  let e2: boolean = foo != foo
  console.log(e1.toString(), e2.toString())
}
