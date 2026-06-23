/**
 * @id EXP2_17_11_3_006_FAIL_CTOR_NAME_AS_REF
 * @expect compile-fail
 * @section 17.11.3
 * @design 构造函数名作为属性引用：验证将命名构造函数名作为属性引用产生编译错误
 * @note 反向用例：验证 Foo.Bar 作为属性访问产生 ESE0087 编译错误
 */
class Foo {
  constructor Bar() {
    console.log("Bar")
  }
}

function testCtorNameAsRef(): void {
  let f = Foo.Bar
  console.log(f)
}
