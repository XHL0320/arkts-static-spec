/**
 * @id LEX_02_09_05_006_PASS_BOOLEAN_USAGE
 * @expect compile-pass
 * @section 2.9.5
 * @design 布尔赋值与使用
 * @note compile-pass 用例：验证布尔赋值、参数、返回值
 */

// 布尔变量赋值
let a: boolean = true
let b: boolean = a

// 布尔作为函数参数
function testParam(x: boolean): boolean {
  return x
}

// 布尔作为函数返回值
function testReturn(): boolean {
  return true
}

let c: boolean = testParam(true)
let d: boolean = testReturn()
