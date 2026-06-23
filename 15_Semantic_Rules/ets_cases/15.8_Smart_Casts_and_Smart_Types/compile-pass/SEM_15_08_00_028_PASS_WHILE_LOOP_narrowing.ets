/*
 * @id SEM_15_08_00_028_PASS_WHILE_LOOP_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 规范 15.8：while 循环中的类型收窄（智能类型转换）
 * @note 测试 while 循环中的智能类型转换
 */

// 测试 while 循环中的类型收窄
function test_while_loop_narrowing(value: number | undefined): void {
  let x: number | undefined = value
  
  // while 循环条件中的类型收窄
  while (x != undefined) {
    // 在这个循环中，x 的智能类型是 number
    let doubled: number = x * 2
    console.log("While loop: " + doubled)
    break  // 简化示例
  }
}

// 测试 do-while 循环中的类型收窄
function test_do_while_loop_narrowing(value: string | null): void {
  let x: string | null = value
  
  if (x != null) {
    // 在这个分支中，x 的智能类型是 string
    let len: number = x.length
    console.log("Do-while loop: " + len)
  }
}

// 测试 while 循环后的类型重置
function test_while_loop_after_reset(): void {
  let x: number | string = 42
  
  while (typeof x === "number") {
    // 在这个循环中，x 的智能类型是 number
    console.log("In while: " + (x * 2))
    break
  }
  
  // 循环后，x 的智能类型重置为声明类型 number | string
  if (typeof x === "string") {
    console.log("After while (string): " + x.toUpperCase())
  } else if (typeof x === "number") {
    console.log("After while (number): " + (x * 2))
  }
}