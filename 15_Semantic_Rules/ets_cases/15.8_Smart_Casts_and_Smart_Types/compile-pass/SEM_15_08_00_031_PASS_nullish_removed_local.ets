/*
 * @id SEM_15_08_00_031_PASS_nullish_removed_local
 * @expect compile-pass
 * @section 15.8
 * @design | nullish 缩窄 | Java null check 不生成 union-minus-null 类型。 | Swift Optional unwrap 生成新值。 | `SEM_15_08_025_PASS_nullish_removed_local` | `SEM_15_08_028_FAIL_nullish_removed_without_check` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_pass_022_nullish_removed_local(): void {
  let value: int = 1
}



