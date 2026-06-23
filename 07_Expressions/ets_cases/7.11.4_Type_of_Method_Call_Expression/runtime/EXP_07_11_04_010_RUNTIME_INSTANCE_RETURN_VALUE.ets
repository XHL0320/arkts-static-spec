/**
 * @id EXP_07_11_04_010_RUNTIME_INSTANCE_RETURN_VALUE
 * @expect runtime
 * @section 7.11.4
 * @design 验证 instance 方法返回值运行时正确性
 * @note 运行时用例：验证实例方法返回 string 值运行时正确
 */
class Greeter {
  greet(name: string): string {
    return "Hello, " + name;
  }
}

function main(): void {
  let g: Greeter = new Greeter();
  let msg: string = g.greet("ArkTS");
  if (msg != "Hello, ArkTS") {
    throw new Error("assertion failed: expected 'Hello, ArkTS', got " + msg);
  }
  console.log("verified");
}
