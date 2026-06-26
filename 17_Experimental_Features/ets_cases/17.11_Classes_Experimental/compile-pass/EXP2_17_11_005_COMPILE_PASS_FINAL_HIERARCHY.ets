/**
 * @id EXP2_17_11_005_COMPILE_PASS_FINAL_HIERARCHY
 * @expect compile-pass
 * @section 17.11
 * @design 验证多个 final 类独立声明编译通过
 * @note 正向用例：同一模块中声明多个不相关的 final 类
 */
final class ConfigA {
  name: string = "a"
}

final class ConfigB {
  name: string = "b"
}

function main(): void {
  let a: ConfigA = new ConfigA()
  let b: ConfigB = new ConfigB()
  console.log(a.name + b.name)
}
