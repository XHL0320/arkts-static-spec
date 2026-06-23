/**
 * @id EXP_07_35_03_003_PASS_INFERRED_RETURN_BLOCK
 * @expect compile-pass
 * @section 7.35.3
 * @design 验证 Lambda 块体带 return 时可推断返回类型 — 省略返回类型标注
 * @note 正向用例：块体带 return 编译通过，类型推断正确
 */
function main(): void {
  // 块体 return int
  const f1: () => int = () => { return 123 }
  let r1: int = f1()

  // 块体 return string
  const f2: () => string = () => { return "world" }
  let r2: string = f2()

  // 块体 return boolean
  const f3: () => boolean = () => { return false }
  let r3: boolean = f3()

  // 块体带参数 return int
  const f4: (x: int) => int = (x: int) => { return x + 1 }
  let r4: int = f4(41)

  // 块体带参数多语句 return int
  const f5: (x: int) => int = (x: int) => {
    let y: int = x * 2
    return y
  }
  let r5: int = f5(21)

  console.log("" + r1 + r2 + r3 + r4 + r5)
}
