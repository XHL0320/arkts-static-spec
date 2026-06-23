/*
 * @id SEM_15_08_017_PASS_FOR_LOOP_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 规范 15.8：for 循环中的类型收窄（智能类型转换）
 * @note 测试 for 循环中的智能类型转换
 */

// 测试 for 循环中的类型收窄
function test_for_loop_narrowing(values: (number | string)[]): void {
  for (let i = 0; i < values.length; i++) {
    let value: number | string = values[i]
    
    // for 循环体内的类型收窄
    if (typeof value === "number") {
      console.log("For loop (number): " + (value * 2))
    } else {
      console.log("For loop (string): " + value.toUpperCase())
    }
  }
}

// 测试 for-in 循环中的类型收窄
function test_for_in_narrowing(obj: any): void {
  for (let key in obj) {
    // for-in 循环中，key 的智能类型是 string
    console.log("Key: " + key)
  }
}

// 测试 for-of 循环中的类型收窄
function test_for_of_narrowing(values: (number | string)[]): void {
  for (let value of values) {
    // for-of 循环中，value 的智能类型是 number | string
    if (typeof value === "number") {
      console.log("For-of (number): " + (value * 2))
    } else {
      console.log("For-of (string): " + value.toUpperCase())
    }
  }
}