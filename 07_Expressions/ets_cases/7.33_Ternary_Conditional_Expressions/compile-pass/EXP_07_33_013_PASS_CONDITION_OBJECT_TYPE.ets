/**
 * @id EXP_07_33_013_PASS_CONDITION_OBJECT_TYPE
 * @expect compile-pass
 * @section 7.33
 * @design 验证三元条件表达式允许对象类型作为条件（ArkTS 扩展行为，与 JS 兼容）
 * @note 正向用例：对象类型作为条件编译通过。⚠️ 设计差异：Java/Swift 要求条件必须为 boolean/Bool
 */
class X {}

function main(): void {
  let a: X = new X();
  let b: int = 42;
  let c: int = 99;
  // 对象类型作为条件编译通过（ArkTS 扩展行为）
  let x: int = a ? b : c;
}
