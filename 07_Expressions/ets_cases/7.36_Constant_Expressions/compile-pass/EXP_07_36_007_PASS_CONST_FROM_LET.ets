/**
 * @id EXP_07_36_007_PASS_CONST_FROM_LET
 * @expect compile-pass
 * @section 7.36
 * @design 常量表达式引用 let 变量 — es2panda 不禁止
 * @note 正向用例：⚠️ SPEC 不一致：spec 要求常量表达式只能引用 const，但 es2panda 允许 let
 */
let x: int = 5
const BAD: int = x * 2
function testConstFromLet(): void {
  console.log(BAD.toString())
}
