/**
 * @id EXP_07_28_03_006_PASS_NULL_VARIABLE
 * @expect compile-pass
 * @section 7.28.3
 * @design 验证将 null 赋值给可空变量后进行比较编译通过
 * @note 正向用例：可空类型变量赋值 null 后与 null/undefined 比较
 */
function main(): void {
  let a: Object | null = null;
  let r1: boolean = a == null;
  let r2: boolean = a === null;
  let r3: boolean = a == undefined;
  let r4: boolean = a === undefined;
}
