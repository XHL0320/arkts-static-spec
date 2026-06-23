/*
 * @id SEM_15_09_018_PASS_param_contravariant_override
 * @expect compile-pass
 * @section 15.9
 * @design | 重写兼容签名 | Java 只支持返回协变，不支持参数逆变作为重写。 | Swift 通常不允许参数 variance 重写。 | `SEM_15_09_018_PASS_param_contravariant_override` | `SEM_15_09_021_FAIL_param_covariant_override` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_09_pass_022_param_contravariant_override(): void {
  let value: int = 1
}



