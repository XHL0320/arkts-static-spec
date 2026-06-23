/**
 * @id EXP2_17_11_3_009_FAIL_ALL_NAMED_WRONG_ARGS
 * @expect compile-fail
 * @section 17.11.3
 * @design 全命名构造函数且参数不匹配：验证类只有命名构造函数时，无参调用产生编译错误
 * @note 反向用例：验证全命名构造函数需要匹配参数
 */
class Foo {
  constructor First(n: int) {
    console.log("First")
  }
  constructor Second(s: string) {
    console.log("Second")
  }
  overload constructor { First, Second }
}

function testAllNamedWrongArgs(): void {
  let x: Foo = new Foo()
  console.log("done")
}
