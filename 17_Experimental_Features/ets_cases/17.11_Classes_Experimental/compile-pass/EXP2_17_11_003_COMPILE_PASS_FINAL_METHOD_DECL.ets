/**
 * @id EXP2_17_11_003_COMPILE_PASS_FINAL_METHOD_DECL
 * @expect compile-pass
 * @section 17.11
 * @design 验证 non-final 类中的 final 方法编译通过
 * @note 正向用例：final 方法防止在子类中被重写
 */
class BaseWithFinal {
  final getValue(): int { return 42 }
}

function main(): void {
  let b: BaseWithFinal = new BaseWithFinal()
  console.log(b.getValue().toString())
}
