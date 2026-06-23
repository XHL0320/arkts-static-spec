/**
 * @id EXP_07_14_001_PASS_NULLISH_FIELD_ACCESS
 * @expect compile-pass
 * @section 7.14
 * @design 验证可空类型的字段访问链式操作符：expr 为 nullish 类型时，结果类型为 undefined|T
 * @note 正向用例：bob.spouse?.name 其中 spouse 为 undefined 时结果为 undefined，编译通过
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
}
