/**
 * @id EXP2_17_11_2_008_FAIL_STATIC_FINAL
 * @expect compile-fail
 * @section 17.11.2
 * @design static + final 组合：验证 static 和 final 不能同时修饰一个方法
 * @note 反向用例：验证 static final 组合产生 ESE0048/ESE0077 编译错误
 */
class Foo {
  static final bar(): void {
    console.log("bar")
  }
}
