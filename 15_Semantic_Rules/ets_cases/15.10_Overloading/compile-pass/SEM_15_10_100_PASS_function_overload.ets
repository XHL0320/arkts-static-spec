/*
 * @id SEM_15_10_100_PASS_function_overload
 * @expect compile-pass
 * @section 15.10
 * @design 规范 15.10：函数重载允许同名函数不同参数
 * @note 测试函数重载：参数数量不同即可区分
 */

// 测试函数重载
function add(x: int): int {
  return x
}

function add(x: int, y: int): int {
  return x + y
}

function test_function_overload(): void {
  let r1: int = add(1)     // 调用第一个重载
  let r2: int = add(1, 2)  // 调用第二个重载

  console.log(`${r1} ${r2}`)
}
