/**
 * @id EXP2_17_10_03_006_FAIL_NATIVE_CONSTRUCTOR_NONEMPTY_BODY
 * @expect compile-fail
 * @section 17.10.3
 * @design native 构造函数不能有非空函数体：验证 native constructor() { console.log("x") } 应产生编译时错误
 * @note 反向用例：验证 native 构造函数带非空 body 时产生 ESE0084 编译错误
 */
class NativeCtorFailBody {
  native constructor() {
    console.log("should not compile")
  }
}
