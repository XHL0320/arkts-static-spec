/**
 * @id EXP_07_35_03_005_PASS_NO_PARAM_LAMBDA
 * @expect compile-pass
 * @section 7.35.3
 * @design 验证无参 Lambda 表达式的类型（多种返回类型）
 * @note 正向用例：无参 lambda 各种返回类型均编译通过
 */
function main(): void {
  // 无参 lambda int
  const f1: () => int = (): int => 42
  let r1: int = f1()

  // 无参 lambda string
  const f2: () => string = (): string => "hello"
  let r2: string = f2()

  // 无参 lambda boolean
  const f3: () => boolean = (): boolean => true
  let r3: boolean = f3()

  // 无参 lambda 推断 int
  const f4: () => int = () => 99
  let r4: int = f4()

  // 无参 lambda 推断 string（块体）
  const f5: () => string = () => { return "world" }
  let r5: string = f5()

  console.log("" + r1 + r2 + r3 + r4 + r5)
}
