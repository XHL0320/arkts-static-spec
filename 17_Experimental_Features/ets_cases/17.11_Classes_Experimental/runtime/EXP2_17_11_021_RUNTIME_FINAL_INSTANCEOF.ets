/**
 * @id EXP2_17_11_021_RUNTIME_FINAL_INSTANCEOF
 * @expect runtime
 * @section 17.11
 * @design 运行时验证 final 类 instanceof 检查
 * @note 运行时用例：final 类实例的 instanceof 检查行为
 */
final class FinalA {
  tag: string = "final-A"
}

function main(): void {
  let a: FinalA = new FinalA()
  let isFinal: boolean = a instanceof FinalA
  console.log(isFinal.toString())
}
