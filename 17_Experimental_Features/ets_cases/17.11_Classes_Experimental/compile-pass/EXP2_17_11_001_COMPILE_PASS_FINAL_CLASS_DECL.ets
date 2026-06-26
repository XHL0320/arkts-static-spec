/**
 * @id EXP2_17_11_001_COMPILE_PASS_FINAL_CLASS_DECL
 * @expect compile-pass
 * @section 17.11
 * @design 验证 final 类声明编译通过
 * @note 正向用例：使用 final 关键字声明不可继承的类
 */
final class SealedConfig {
  value: int = 0
}

function main(): void {
  let c: SealedConfig = new SealedConfig()
  console.log("final class declared")
}
