/**
 * @id EXP_07_28_03_014_RUNTIME_NULLABLE_VARIABLES
 * @expect runtime
 * @section 7.28.3
 * @design 验证可空类型变量赋值 null/undefined 后的等值比较运行时行为
 * @note 运行时用例：通过变量形式的 null/undefined 验证扩展等值语义
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  // ===== 变量赋值 null =====
  let a: Object | null = null;

  assert(a == null, "null variable == null should be true");
  assert(a === null, "null variable === null should be true");
  assert(a == undefined, "null variable == undefined should be true (extended)");
  assert((a === undefined) == false, "null variable === undefined should be false");

  // ===== 变量赋值 undefined =====
  let b: Object | undefined = undefined;

  assert(b == undefined, "undefined variable == undefined should be true");
  assert(b === undefined, "undefined variable === undefined should be true");
  assert(b == null, "undefined variable == null should be true (extended)");
  assert((b === null) == false, "undefined variable === null should be false");

  // ===== null 变量 vs undefined 变量 =====
  assert(a == b, "null variable == undefined variable should be true (extended)");
  assert((a === b) == false, "null variable === undefined variable should be false");

  console.log("verified");
}
