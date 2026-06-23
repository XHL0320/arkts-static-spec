/**
 * @id EXP_07_28_03_015_RUNTIME_SPEC_EXAMPLES
 * @expect runtime
 * @section 7.28.3
 * @design 验证 spec 中所有 Extended Equality with null or undefined 示例的运行时行为
 * @note 运行时用例：完整运行 spec 中的每一个代码示例并验证结果
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function foo(x: Object | null, y: Object | null | undefined): void {
  // spec: console.log(x == y, x === y)
  let eq: boolean = x == y;
  let seq: boolean = x === y;
  // 当 x=null, y=undefined 时: eq=true, seq=false
  // 当 x=null, y=null 时: eq=true, seq=true
  if (y == undefined && x == null) {
    assert(eq == true, "x == y should be true when x=null, y=undefined");
    assert(seq == false, "x === y should be false when x=null, y=undefined");
  }
}

function main(): void {
  // ===== spec 示例 1: 可空参数比较 =====
  // foo(null, undefined) // output: true, false
  let x1: Object | null = null;
  let y1: Object | null | undefined = undefined;
  assert(x1 == y1, "null == undefined should be true (spec example 1)");
  assert((x1 === y1) == false, "null === undefined should be false (spec example 1)");

  // foo(null, null) // output: true, true
  let x2: Object | null = null;
  let y2: Object | null | undefined = null;
  assert(x2 == y2, "null == null should be true (spec example 2)");
  assert(x2 === y2, "null === null should be true (spec example 2)");

  // ===== spec 示例 2: 直接比较 =====
  // console.log(null == undefined) // output: true
  assert(null == undefined, "null == undefined should be true (spec)");

  // console.log(null === undefined) // output: false
  assert((null === undefined) == false, "null === undefined should be false (spec)");

  console.log("verified");
}
