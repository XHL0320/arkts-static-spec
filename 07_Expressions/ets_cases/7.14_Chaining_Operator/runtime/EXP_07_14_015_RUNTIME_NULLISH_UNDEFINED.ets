/**
 * @id EXP_07_14_015_RUNTIME_NULLISH_UNDEFINED
 * @expect runtime
 * @section 7.14
 * @design 验证 nullish 对象链式操作返回 undefined：bob.spouse?.name 返回 undefined
 * @note 运行时用例：spouse 为 undefined 时 ?. 返回 undefined
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
  let s: string | undefined = bob.spouse?.name;
  if (s != undefined) {
    throw new Error("assertion failed: expected undefined, got " + s);
  }
  console.log("verified");
}
