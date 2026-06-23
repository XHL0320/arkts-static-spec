/**
 * @id EXP_07_33_012_PASS_CONDITION_STRING_TYPE
 * @expect compile-pass
 * @section 7.33
 * @design 验证三元条件表达式允许 string 类型作为条件（ArkTS 扩展行为，与 JS 兼容）
 * @note 正向用例：string 类型作为条件编译通过。⚠️ 设计差异：Java/Swift 要求条件必须为 boolean/Bool
 */
function main(): void {
  let a: string = "hello";
  let b: int = 42;
  let c: int = 99;
  // string 作为条件编译通过（ArkTS 扩展行为）
  let x: int = a ? b : c;
}
