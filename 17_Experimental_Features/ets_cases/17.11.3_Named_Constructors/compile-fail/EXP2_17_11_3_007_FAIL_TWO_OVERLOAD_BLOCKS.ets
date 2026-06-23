/**
 * @id EXP2_17_11_3_007_FAIL_TWO_OVERLOAD_BLOCKS
 * @expect compile-fail
 * @section 17.11.3
 * @design 两个 overload constructor 块：验证同一个类中声明两个 overload constructor 块产生编译错误
 * @note 反向用例：验证重复的 overload constructor 声明产生编译错误
 */
class Foo {
  constructor First() {
    console.log("First")
  }
  overload constructor { First }
  overload constructor { First }
}

function testTwoOverloadBlocks(): void {
  let f: Foo = new Foo()
  console.log("done")
}
