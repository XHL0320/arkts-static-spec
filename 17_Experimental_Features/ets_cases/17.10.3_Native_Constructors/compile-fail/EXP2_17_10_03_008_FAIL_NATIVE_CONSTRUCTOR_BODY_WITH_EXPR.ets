/**
 * @id EXP2_17_10_03_008_FAIL_NATIVE_CONSTRUCTOR_BODY_WITH_EXPR
 * @expect compile-fail
 * @section 17.10.3
 * @design native 构造函数 body 不能包含表达式语句：验证 body 含表达式语句时产生编译时错误
 * @note 反向用例：验证 native 构造函数 body 含赋值表达式时产生 ESE0084 编译错误
 */
class NativeCtorFailExpr {
  native constructor() {
    let x: int = 1
  }
}
