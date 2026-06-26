/**
 * @id EXP2_17_11_023_RUNTIME_FINAL_CLASS_CAST
 * @expect runtime
 * @section 17.11
 * @design 运行时验证 final 类对象类型转换
 * @note 运行时用例：final 类对象向上转型再转回
 */
final class Crate {
  value: int = 0
}

function main(): void {
  let b: Crate = new Crate()
  let o: Object = b
  let b2: Crate = o as Crate
  console.log(b2.value.toString())
}
