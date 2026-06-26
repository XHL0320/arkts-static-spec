/**
 * @id EXP2_17_11_012_COMPILE_FAIL_FINAL_ABSTRACT
 * @expect compile-fail
 * @section 17.11
 * @design 验证 final + abstract 方法组合——应报编译错误
 * @note 反向用例：spec §17.11 禁止 final 与 abstract 同时修饰方法
 */
abstract class Base {
  final abstract broken(): void
}

function main(): void {}
