/**
 * @id EXP_07_31_005_FAIL_COND_OR_STRING_BIGINT_MIXED
 * @expect compile-fail
 * @section 7.31
 * @design 验证 || 操作数与 string/bigint 混合时应产生编译时错误，覆盖 boolean || string、string || boolean、string || string、bigint 混合
 * @note 反向用例：boolean || string/bigint 混合类型应产生编译期错误
 */
function main(): void {
  let b: boolean = true;
  let s: string = "hello";
  let bi: bigint = 1n;

  // boolean || string — 应报错
  let r1: boolean = b || s;

  // string || boolean (反向) — 应报错
  let r2: boolean = s || b;

  // string || string (全非 boolean) — 应报错
  let r3: boolean = s || s;

  // boolean || bigint — 应报错
  let r4: boolean = b || bi;

  // bigint || bigint (全非 boolean) — 应报错
  let r5: boolean = bi || bi;
}
