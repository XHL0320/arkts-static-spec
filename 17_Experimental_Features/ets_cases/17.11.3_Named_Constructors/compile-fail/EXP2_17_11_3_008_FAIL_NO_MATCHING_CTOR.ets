/**
 * @id EXP2_17_11_3_008_FAIL_NO_MATCHING_CTOR
 * @expect compile-fail
 * @section 17.11.3
 * @design 调用参数不匹配任何命名构造函数：验证 new Class(args) 参数不匹配时产生编译错误
 * @note 反向用例：验证无匹配构造函数时产生 ESE0124/ESE0127 编译错误
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

function testNoMatchingCtor(): void {
  let x: Foo = new Foo(true)
  console.log("done")
}
