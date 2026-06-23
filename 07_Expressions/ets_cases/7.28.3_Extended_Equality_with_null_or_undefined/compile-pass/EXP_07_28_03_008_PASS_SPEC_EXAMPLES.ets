/**
 * @id EXP_07_28_03_008_PASS_SPEC_EXAMPLES
 * @expect compile-pass
 * @section 7.28.3
 * @design 验证规范中所有 spec 示例代码编译通过
 * @note 正向用例：包含 spec 文档中所有代码示例，确保完整编译通过
 */
function foo(x: Object | null, y: Object | null | undefined): void {
  // spec 示例：x == y 比较
  let r1: boolean = x == y;
  let r2: boolean = x === y;
}

function main(): void {
  // spec 示例：直接比较 null 和 undefined
  let r3: boolean = null == undefined;
  let r4: boolean = null === undefined;

  // spec 示例：调用可空参数函数
  foo(null, undefined);
  foo(null, null);
}
