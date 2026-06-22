/**
 * @id EXP_07_27_02_008_RUNTIME_BIGINT_FLOAT
 * @expect runtime
 * @section 7.27.2
 * @design 验证bigint与float混合类型关系运算运行时行为：双方均转换为double后执行浮点比较
 * @note 运行时用例：实际执行验证bigint与float的关系比较结果
 */
function main(): void {
  let bi: bigint = 42n
  let f1: float = 42.0
  let f2: float = 100.0
  let f3: float = 3.14

  // bigint vs float: both -> double, then floating-point comparison
  // 42n vs 42.0: equal
  if (!(bi <= f1)) throw new Error("42n <= 42.0 should be true")
  if (!(bi >= f1)) throw new Error("42n >= 42.0 should be true")
  if (bi < f1) throw new Error("42n < 42.0 should be false (equal)")
  if (bi > f1) throw new Error("42n > 42.0 should be false (equal)")

  // bigint vs larger float
  if (!(bi < f2)) throw new Error("42n < 100.0 should be true")
  if (!(bi <= f2)) throw new Error("42n <= 100.0 should be true")
  if (bi > f2) throw new Error("42n > 100.0 should be false")
  if (bi >= f2) throw new Error("42n >= 100.0 should be false")

  // bigint vs non-integer float
  if (!(bi > f3)) throw new Error("42n > 3.14 should be true")
  if (!(bi >= f3)) throw new Error("42n >= 3.14 should be true")
  if (bi < f3) throw new Error("42n < 3.14 should be false")

  // float on left side
  if (!(f3 < bi)) throw new Error("3.14 < 42n should be true")
  if (f3 > bi) throw new Error("3.14 > 42n should be false")

  // Large bigint vs float
  let largeBi: bigint = 999999999n
  let smallF: float = 1.0
  if (!(largeBi > smallF)) throw new Error("999999999n > 1.0 should be true")
  if (!(smallF < largeBi)) throw new Error("1.0 < 999999999n should be true")

  console.log("verified")
}
