/*
 * @id SEM_15_11_006_PASS_STATIC_method_overload
 * @expect compile-pass
 * @section 15.11.4
 * @design 规范 15.11.4：类静态方法的重载集包含类中定义的静态方法
 * @note 测试类静态方法重载解析
 */

// 测试类静态方法重载解析
class MathUtils {
  // 静态方法重载
  static add(a: number, b: number): number {
    return a + b
  }
  
  static add(a: string, b: string): string {
    return a + b
  }
  
  static add(a: number[], b: number[]): number {
    return a[0] + b[0]
  }
}

function test_static_method_overload(): void {
  // 重载解析：选择第一个匹配的静态方法
  let result1: number = MathUtils.add(1, 2)  // 调用 add(a: number, b: number)
  console.log("Number add: " + result1)  // 输出: 3
  
  let result2: string = MathUtils.add("hello", "world")  // 调用 add(a: string, b: string)
  console.log("String add: " + result2)  // 输出: helloworld
  
  let result3: number = MathUtils.add([10, 20], [30, 40])  // 调用 add(a: number[], b: number[])
  console.log("Array add: " + result3)  // 输出: 40
  
  console.log("Static method overload test passed")
}
