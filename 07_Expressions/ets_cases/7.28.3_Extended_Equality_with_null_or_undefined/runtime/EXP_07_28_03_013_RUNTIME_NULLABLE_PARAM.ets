/**
 * @id EXP_07_28_03_013_RUNTIME_NULLABLE_PARAM
 * @expect runtime
 * @section 7.28.3
 * @design 验证可空类型参数传递 null/undefined 时等值比较的运行时行为（spec 示例）
 * @note 运行时用例：Object|null 和 Object|null|undefined 参数间比较
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function foo(x: Object | null, y: Object | null | undefined): void {
  // 使用 === 严格区分 null 和 undefined，避免扩展等值导致两个 if 同时进入
  if (y === undefined && x === null) {
    // spec: foo(null, undefined) → x==y true, x===y false
    assert(x == y, "x == y should be true when x=null, y=undefined (spec)");
    assert((x === y) == false, "x === y should be false when x=null, y=undefined (spec)");
  }
  if (y === null && x === null) {
    // spec: foo(null, null) → x==y true, x===y true
    assert(x == y, "x == y should be true when both are null (spec)");
    assert(x === y, "x === y should be true when both are null (spec)");
  }
}

function bar(x: Object | null, y: Object | null): void {
  // 两个都是 null 的情况
  assert(x == y, "x == y should be true when both are null");
  assert(x === y, "x === y should be true when both are null");
}

function main(): void {
  // spec 示例：foo(null, undefined) // output: true, false
  foo(null, undefined);

  // spec 示例：foo(null, null) // output: true, true
  foo(null, null);

  // 两个 null 参数
  bar(null, null);

  console.log("verified");
}
