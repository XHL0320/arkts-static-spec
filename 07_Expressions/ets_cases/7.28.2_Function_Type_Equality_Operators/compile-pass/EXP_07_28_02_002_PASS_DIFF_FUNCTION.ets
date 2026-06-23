/**
 * @id EXP_07_28_02_002_PASS_DIFF_FUNCTION
 * @expect compile-pass
 * @section 7.28.2
 * @design 验证不同函数对象的 == 比较编译通过
 * @note 正向用例：不同函数通过 == 比较应编译通过，运行时为 false（spec 示例：foo == bar）
 */
function foo(): void {}
function bar(): void {}

function main(): void {
  let r1: boolean = foo == bar;
  let r2: boolean = foo != bar;
}
