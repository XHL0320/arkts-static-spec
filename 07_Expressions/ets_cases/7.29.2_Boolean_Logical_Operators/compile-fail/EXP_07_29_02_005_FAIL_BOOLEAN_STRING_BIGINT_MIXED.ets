/**
 * @id EXP_07_29_02_005_FAIL_BOOLEAN_STRING_BIGINT_MIXED
 * @expect compile-fail
 * @section 7.29.2
 * @design 验证 boolean 与 string/bigint 等非 boolean 类型混合使用 &、^、| 运算符时产生编译时错误
 * @note 反向用例：boolean &/^/| 运算符仅适用于 boolean 类型，与 string/bigint 混用应报编译错误
 */
function main(): void {
  let b: boolean = true;
  let s: string = "hello";
  let bi: bigint = 1n;

  // boolean & string — 编译时错误
  let r1: boolean = b & s;

  // boolean ^ bigint — 编译时错误
  let r2: boolean = b ^ bi;

  // boolean | string — 编译时错误
  let r3: boolean = b | s;
}
