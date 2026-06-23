/**
 * @id EXP_07_28_02_001_PASS_SAME_FUNCTION
 * @expect compile-pass
 * @section 7.28.2
 * @design 验证同一个函数对象的 == 比较编译通过
 * @note 正向用例：同一个函数引用通过 == 比较应编译通过（spec 示例：foo == foo）
 */
function foo(): void {}

function main(): void {
  let r: boolean = foo == foo;
}
