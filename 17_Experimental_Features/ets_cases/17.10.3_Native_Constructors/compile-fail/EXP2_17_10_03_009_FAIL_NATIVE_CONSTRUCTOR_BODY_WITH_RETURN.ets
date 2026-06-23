/**
 * @id EXP2_17_10_03_009_FAIL_NATIVE_CONSTRUCTOR_BODY_WITH_RETURN
 * @expect compile-fail
 * @section 17.10.3
 * @design native 构造函数 body 不能包含 return 语句：验证 body 含 return 时产生编译时错误
 * @note 反向用例：验证 native 构造函数 body 含 return 语句时产生 ESE0084 编译错误
 */
class NativeCtorFailReturn {
  native constructor() {
    return
  }
}
