/**
 * @id EXP_07_28_03_012_RUNTIME_NULL_UNDEFINED_LITERALS
 * @expect runtime
 * @section 7.28.3
 * @design 验证 null/undefined 字面量等值比较的运行时行为
 * @note 运行时用例：验证 == 返回 true（类型提升），=== 返回 false（严格区分）
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  // ===== null == undefined (扩展等值核心) =====
  assert(null == undefined, "null == undefined should be true (spec)");

  // ===== null === undefined (严格等值应该区分类型) =====
  assert((null === undefined) == false, "null === undefined should be false (spec)");

  // ===== null != undefined =====
  assert((null != undefined) == false, "null != undefined should be false");

  // ===== null !== undefined =====
  assert(null !== undefined, "null !== undefined should be true");

  // ===== null == null =====
  assert(null == null, "null == null should be true");

  // ===== null === null =====
  assert(null === null, "null === null should be true");

  // ===== null != null =====
  assert((null != null) == false, "null != null should be false");

  // ===== null !== null =====
  assert((null !== null) == false, "null !== null should be false");

  // ===== undefined == undefined =====
  assert(undefined == undefined, "undefined == undefined should be true");

  // ===== undefined === undefined =====
  assert(undefined === undefined, "undefined === undefined should be true");

  // ===== undefined != undefined =====
  assert((undefined != undefined) == false, "undefined != undefined should be false");

  // ===== undefined !== undefined =====
  assert((undefined !== undefined) == false, "undefined !== undefined should be false");

  console.log("verified");
}
