/**
 * @id EXP_07_14_018_RUNTIME_METHOD_CHAINING
 * @expect runtime
 * @section 7.14
 * @design 验证实例方法链式调用运行时：nullish 返回 undefined，非 nullish 返回值
 * @note 运行时用例：p?.getName() 当 p 为 undefined 时返回 undefined，否则返回值
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
  // Case 1: undefined 实例 → 返回 undefined
  let p1: Person | undefined = undefined;
  let s1: string | undefined = p1?.getName();
  if (s1 != undefined) {
    throw new Error("assertion failed: expected undefined, got " + s1);
  }

  // Case 2: 有效实例 → 返回实际值
  let p2: Person | undefined = new Person("Alice");
  let s2: string | undefined = p2?.getName();
  if (s2 != "Alice") {
    throw new Error("assertion failed: expected Alice, got " + s2);
  }

  console.log("verified");
}
