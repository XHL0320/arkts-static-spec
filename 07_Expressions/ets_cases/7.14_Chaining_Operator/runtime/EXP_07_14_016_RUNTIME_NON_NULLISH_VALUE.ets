/**
 * @id EXP_07_14_016_RUNTIME_NON_NULLISH_VALUE
 * @expect runtime
 * @section 7.14
 * @design 验证非 nullish 对象链式操作返回实际值：bob.spouse?.name 返回 "Alice"
 * @note 运行时用例：spouse 赋值后 ?. 返回实际值
 */
class Person {
  name: string;
  spouse?: Person = undefined;
  constructor(name: string) {
    this.name = name;
  }
}

function main(): void {
  let bob: Person = new Person("Bob");
  bob.spouse = new Person("Alice");
  let s: string | undefined = bob.spouse?.name;
  if (s != "Alice") {
    throw new Error("assertion failed: expected Alice, got " + s);
  }
  console.log("verified");
}
