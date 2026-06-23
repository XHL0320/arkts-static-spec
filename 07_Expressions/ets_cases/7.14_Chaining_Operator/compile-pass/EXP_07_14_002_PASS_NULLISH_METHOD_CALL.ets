/**
 * @id EXP_07_14_002_PASS_NULLISH_METHOD_CALL
 * @expect compile-pass
 * @section 7.14
 * @design 验证可空类型实例方法调用链式操作符：expr?.method() 结果类型为 undefined|T
 * @note 正向用例：obj?.getName() 其中 obj 为 Person|undefined，结果类型 string|undefined
 */
class Person {
  name: string;
  constructor(name: string) {
    this.name = name;
  }
  getName(): string {
    return this.name;
  }
}

function main(): void {
  let p: Person | undefined = new Person("Alice");
  let s: string | undefined = p?.getName();
}
