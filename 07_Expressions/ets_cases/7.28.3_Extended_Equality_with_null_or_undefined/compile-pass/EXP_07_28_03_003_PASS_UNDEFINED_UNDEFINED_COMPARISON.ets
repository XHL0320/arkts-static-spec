/**
 * @id EXP_07_28_03_003_PASS_UNDEFINED_UNDEFINED_COMPARISON
 * @expect compile-pass
 * @section 7.28.3
 * @design 验证 undefined == undefined 和 undefined === undefined 编译通过
 * @note 正向用例：undefined 与自身的等值和严格等值比较通过编译
 */
function main(): void {
  let r1: boolean = undefined == undefined;
  let r2: boolean = undefined === undefined;
  let r3: boolean = undefined != undefined;
  let r4: boolean = undefined !== undefined;
}
