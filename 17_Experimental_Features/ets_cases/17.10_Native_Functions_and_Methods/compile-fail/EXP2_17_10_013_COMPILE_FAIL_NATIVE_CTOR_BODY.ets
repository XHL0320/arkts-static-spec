/**
 * @id EXP2_17_10_013_COMPILE_FAIL_NATIVE_CTOR_BODY
 * @expect compile-fail
 * @section 17.10
 * @design 验证 native 构造器不能有非空 body——应报编译错误
 * @note 反向用例：spec §17.10 要求 native 构造器有非空 body 时 compile-time error
 */
class BadCtor {
  native constructor() {
    console.log("non-empty body")
  }
}

function main(): void {}
