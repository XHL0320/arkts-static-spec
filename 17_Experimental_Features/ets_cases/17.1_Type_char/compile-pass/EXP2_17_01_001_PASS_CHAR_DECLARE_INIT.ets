/**
 * @id EXP2_17_01_001_PASS_CHAR_DECLARE_INIT
 * @expect compile-pass
 * @section 17.1
 * @design char 类型变量声明与初始化：验证 char 类型变量可以正确声明并用 char 字面量初始化
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharDeclareInit(): void {
  let a: char = c'a'
  let z: char = c'Z'
  let zero: char = c'0'
  let space: char = c' '
  let exclam: char = c'!'
  console.log(a)
  console.log(z)
  console.log(zero)
  console.log(space)
  console.log(exclam)
}
