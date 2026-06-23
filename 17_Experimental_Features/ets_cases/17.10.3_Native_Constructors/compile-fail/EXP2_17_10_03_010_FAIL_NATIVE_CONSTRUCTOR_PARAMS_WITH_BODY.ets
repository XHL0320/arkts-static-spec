/**
 * @id EXP2_17_10_03_010_FAIL_NATIVE_CONSTRUCTOR_PARAMS_WITH_BODY
 * @expect compile-fail
 * @section 17.10.3
 * @design 带参数的 native 构造函数也不能有 body：验证 native constructor(x: int) { ... } 产生编译时错误
 * @note 反向用例：验证带参数 + 非空 body 的组合违规，产生 ESE0084 编译错误
 */
class NativeCtorFailParamsBody {
  native constructor(val: int, name: string) {
    console.log("should not compile with params")
  }
}
