/**
 * @id EXP_07_28_01_006_RUNTIME_NAN_EQ
 * @expect runtime
 * @section 7.28.1
 * @design NaN 相等比较（NaN != NaN）

 * @note 运行时用例：实际执行验证NaN 相等行为
 */
function main(): void {
  let nan: double = 0.0 / 0.0
  if (nan == nan) { throw new Error("assertion failed: NaN == NaN should be false")
  }
  if (!(nan != nan)) { throw new Error("assertion failed: NaN != NaN should be true")
  }
  console.log("verified")
}
