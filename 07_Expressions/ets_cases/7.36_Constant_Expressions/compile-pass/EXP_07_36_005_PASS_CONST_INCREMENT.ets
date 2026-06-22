/**
 * @id EXP_07_36_005_PASS_CONST_INCREMENT
 * @expect compile-pass
 * @section 7.36
 * @design 常量表达式使用 ++ — es2panda 未禁止
 * @note 正向用例：⚠️ SPEC 不一致：spec §7.36 不允许 ++ 在常量表达式中，但 es2panda 编译通过
 */
let count: int = 0
const BAD: int = count++
function testConstIncrement(): void {
  console.log(BAD.toString())
}
