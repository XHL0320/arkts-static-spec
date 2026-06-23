/**
 * @id LEX_02_06_045_PASS_SCOPING
 * @expect compile-pass
 * @section 2.6
 * @design 标识符作用域
 * @note compile-pass 用例：验证标识符作用域
 */

// 全局作用域
let globalVar = 1

function testScope(): void {
  // 函数作用域
  let localVar = 2
  
  // 块作用域
  if (true) {
    let blockVar = 3
  }
  
  // 循环作用域
  for (let i = 0; i < 10; i++) {
    let loopVar = i
  }
}

class MyClass {
  // 类作用域
  classVar: int = 10
  
  method(): void {
    let methodVar = 20
  }
}
