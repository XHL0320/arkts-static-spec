/*
 * @id SEM_15_08_00_006_PASS_FUNC_nullish_check
 * @expect compile-pass
 * @section 15.8
 * @design `x != null` 或等价检查移除 nullish 部分。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_func_pass_003_nullish_check(): void {
  let value: int = 1
  value = value + 1
}

