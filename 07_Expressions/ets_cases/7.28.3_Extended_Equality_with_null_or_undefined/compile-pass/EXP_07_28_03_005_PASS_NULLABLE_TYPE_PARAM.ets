/**
 * @id EXP_07_28_03_005_PASS_NULLABLE_TYPE_PARAM
 * @expect compile-pass
 * @section 7.28.3
 * @design 验证可空类型参数的 null/undefined 等值比较编译通过（spec 示例代码）
 * @note 正向用例：Object|null 和 Object|null|undefined 参数间的比较编译通过
 */
function foo(x: Object | null, y: Object | null | undefined): void {
  let r1: boolean = x == y;
  let r2: boolean = x === y;
}

function main(): void {
  foo(null, undefined);
  foo(null, null);
}
