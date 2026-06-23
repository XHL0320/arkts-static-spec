/**
 * @id EXP_07_28_03_004_PASS_NULL_NE_UNDEFINED
 * @expect compile-pass
 * @section 7.28.3
 * @design 验证 null != undefined 和 null !== undefined 编译通过
 * @note 正向用例：null 和 undefined 的不等和严格不等比较通过编译
 */
function main(): void {
  let r1: boolean = null != undefined;
  let r2: boolean = null !== undefined;
}
