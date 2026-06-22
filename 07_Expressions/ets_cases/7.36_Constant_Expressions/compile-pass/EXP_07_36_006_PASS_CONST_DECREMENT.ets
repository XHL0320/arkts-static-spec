/**
 * @id EXP_07_36_006_PASS_CONST_DECREMENT
 * @expect compile-pass
 * @section 7.36
 * @design 常量表达式使用 -- — es2panda 未禁止
 * @note 正向用例：⚠️ SPEC 不一致：spec §7.36 不允许 -- 在常量表达式中，但 es2panda 编译通过
 */
let count: int = 5
const BAD: int = count--
function testConstDecrement(): void {
  console.log(BAD.toString())
}
