/**
 * @id EXP_07_28_02_002_PASS_DIFF_FUNC_NEQ
 * @expect compile-pass
 * @section 7.28.2
 * @design 不同函数引用不相等
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function foo(): void {}
function bar(): void {}
function testDiffFuncNeq(): void {
  let e1: boolean = foo == bar
  console.log(e1.toString())
}
