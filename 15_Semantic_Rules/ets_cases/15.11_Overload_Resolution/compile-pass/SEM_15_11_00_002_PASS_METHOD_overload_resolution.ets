/*
 * @id SEM_15_11_00_002_PASS_METHOD_overload_resolution
 * @expect compile-pass
 * @section 15.11.5
 * @design 规范 15.11.5：类实例方法的重载集包含类定义的方法和继承的方法
 * @note 测试类实例方法重载解析
 */

// 测试类实例方法重载解析
class Calculator {
  // 方法重载
  add(a: number, b: number): number {
    return a + b
  }
  
  add(a: string, b: string): string {
    return a + b
  }
  
  add(a: number[], b: number[]): number {
    return a[0] + b[0]
  }
}

function test_method_overload_resolution(): void {
  let calc: Calculator = new Calculator()
  
  // 重载解析：选择第一个匹配的方法
  let result1: number = calc.add(1, 2)  // 调用 add(a: number, b: number)
  console.log("Number add: " + result1)  // 输出: 3
  
  let result2: string = calc.add("hello", "world")  // 调用 add(a: string, b: string)
  console.log("String add: " + result2)  // 输出: helloworld
  
  let result3: number = calc.add([10, 20], [30, 40])  // 调用 add(a: number[], b: number[])
  console.log("Array add: " + result3)  // 输出: 40
  
  console.log("Method overload resolution test passed")
}
