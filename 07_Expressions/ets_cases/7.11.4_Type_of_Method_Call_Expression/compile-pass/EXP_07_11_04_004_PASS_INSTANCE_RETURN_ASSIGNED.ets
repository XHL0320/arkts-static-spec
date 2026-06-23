/**
 * @id EXP_07_11_04_004_PASS_INSTANCE_RETURN_ASSIGNED
 * @expect compile-pass
 * @section 7.11.4
 * @design 验证 instance 非 void 方法返回值赋值给变量，编译通过
 * @note 正向用例：实例方法返回 string 类型，赋值给 string 变量，编译通过
 */
class Greeter {
  getGreeting(): string {
    return "hello";
  }
}

function main(): void {
  let g: Greeter = new Greeter();
  let s: string = g.getGreeting();
}
