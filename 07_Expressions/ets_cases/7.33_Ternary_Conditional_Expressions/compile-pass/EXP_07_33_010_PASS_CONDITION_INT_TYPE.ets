/**
 * @id EXP_07_33_010_PASS_CONDITION_INT_TYPE
 * @expect compile-pass
 * @section 7.33
 * @design 验证三元条件表达式允许 int 类型作为条件（ArkTS 扩展行为，与 JS 兼容）
 * @note 正向用例：int 类型作为条件编译通过。⚠️ 设计差异：Java/Swift 要求条件必须为 boolean/Bool
 */
function main(): void {
  let a: int = 5;
  let b: string = "hello";
  let c: string = "world";
  // int 作为条件编译通过（ArkTS 扩展行为）
  let x: string = a ? b : c;
}
