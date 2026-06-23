/*
 * @id SEM_15_08_012_PASS_MUST_ALIAS_sets
 * @expect compile-pass
 * @section 15.8.4
 * @design 规范 15.8.4：must-alias 集计算用于智能类型转换
 * @note 测试 must-alias 集的计算
 */

// 测试 must-alias 集的计算
function test_must_alias_sets(): void {
  let x: number | string = 42
  let y: number | string = "hello"
  
  // 赋值操作影响 must-alias 集
  x = y  // x 和 y 现在可能有相同的 must-alias 集
  
  if (typeof x === "number") {
    // 在这个分支中，x 的智能类型是 number
    // must-alias 集可能包含 x 和 y
    console.log("x is number: " + (x * 2))
  } else {
    // 在这个分支中，x 的智能类型是 string
    console.log("x is string: " + x.toUpperCase())
  }
  
  // 测试多个变量的 must-alias 关系
  let a: number | undefined = 42
  let b: number | undefined = undefined
  
  a = b  // a 和 b 现在可能有相同的 must-alias 集
  
  if (a != undefined) {
    // 在这个分支中，a 的智能类型是 number
    console.log("a is number: " + (a * 2))
  }
  
  console.log("Must-alias sets test passed")
}
