/**
 * @id EXP2_17_10_03_007_FAIL_NATIVE_CONSTRUCTOR_EMPTY_BODY
 * @expect compile-fail
 * @section 17.10.3
 * @design native 构造函数不能有任何函数体（包括空 body `{}`）：验证即使是空 body 也会产生编译时错误
 * @note 反向用例：验证 native 构造函数带空 body `{}` 时产生 ESE0084 编译错误
 */
class NativeCtorFailEmptyBody {
  native constructor() {}
}
