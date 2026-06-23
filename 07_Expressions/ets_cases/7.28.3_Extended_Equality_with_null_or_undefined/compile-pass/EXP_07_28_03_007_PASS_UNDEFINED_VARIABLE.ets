/**
 * @id EXP_07_28_03_007_PASS_UNDEFINED_VARIABLE
 * @expect compile-pass
 * @section 7.28.3
 * @design 验证将 undefined 赋值给可空变量后进行比较编译通过
 * @note 正向用例：可空类型变量赋值 undefined 后与 null/undefined 比较
 */
function main(): void {
  let b: Object | undefined = undefined;
  let r1: boolean = b == undefined;
  let r2: boolean = b === undefined;
  let r3: boolean = b == null;
  let r4: boolean = b === null;
}
