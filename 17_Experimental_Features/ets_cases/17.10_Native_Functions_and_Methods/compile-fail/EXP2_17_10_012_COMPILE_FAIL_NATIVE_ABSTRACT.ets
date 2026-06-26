/**
 * @id EXP2_17_10_012_COMPILE_FAIL_NATIVE_ABSTRACT
 * @expect compile-fail
 * @section 17.10
 * @design 验证 native + abstract 方法组合——应报编译错误
 * @note 反向用例：spec §17.10 禁止 native 与 abstract 同时修饰方法
 */
abstract class Base {
  native abstract broken(): void
}

function main(): void {}
