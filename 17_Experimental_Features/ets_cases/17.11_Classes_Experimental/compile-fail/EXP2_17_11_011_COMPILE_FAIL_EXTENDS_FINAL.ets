/**
 * @id EXP2_17_11_011_COMPILE_FAIL_EXTENDS_FINAL
 * @expect compile-fail
 * @section 17.11
 * @design 验证 extends final 类——应报编译错误
 * @note 反向用例：spec §17.11 禁止继承 final 类
 */
final class Sealed {
  x: int = 0
}

class Breaker extends Sealed {
  y: int = 0
}

function main(): void {}
