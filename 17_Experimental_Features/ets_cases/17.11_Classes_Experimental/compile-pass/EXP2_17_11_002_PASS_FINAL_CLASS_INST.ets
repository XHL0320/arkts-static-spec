/**
 * @id EXP2_17_11_002_PASS_FINAL_CLASS_INST
 * @expect compile-pass
 * @section 17.11
 * @design 验证 final 类实例化编译通过
 * @note 正向用例：final 类可以被正常实例�?
 */
final class FinalPoint {
  x: int = 0
  y: int = 0
}

function main(): void {
  let p: FinalPoint = new FinalPoint()
  p.x = 10
  console.log(p.x.toString())
}

