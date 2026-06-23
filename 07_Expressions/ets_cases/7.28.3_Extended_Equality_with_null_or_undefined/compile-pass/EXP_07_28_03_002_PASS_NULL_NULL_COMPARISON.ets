/**
 * @id EXP_07_28_03_002_PASS_NULL_NULL_COMPARISON
 * @expect compile-pass
 * @section 7.28.3
 * @design 验证 null == null 和 null === null 编译通过
 * @note 正向用例：null 与自身的等值和严格等值比较通过编译
 */
function main(): void {
  let r1: boolean = null == null;
  let r2: boolean = null === null;
  let r3: boolean = null != null;
  let r4: boolean = null !== null;
}
