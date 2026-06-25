/*
 * @id SEM_15_14_00_017_PASS_NULL_UNDEFINED_truthiness
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：null 和 undefined 的真值检查
 * @note 测试 null 和 undefined 的真值检查
 */

// 测试 null 和 undefined 的真值检查
function test_null_undefined_truthiness(): void {
  // null 的真值检查
  let n: null = null
  if (!n) {
    console.log("null is falsy")  // 输出：null is falsy
  }
  
  // undefined 的真值检查
  let u: undefined = undefined
  if (!u) {
    console.log("undefined is falsy")  // 输出：undefined is falsy
  }
  
  // null 和 undefined 的联合类型真值检查
  let nu: null | undefined = null
  if (!nu) {
    console.log("null|undefined is falsy")  // 输出：null|undefined is falsy
  }
  
  nu = undefined
  if (!nu) {
    console.log("null|undefined is falsy")  // 输出：null|undefined is falsy
  }
  
  console.log("Null/undefined truthiness test passed")
}