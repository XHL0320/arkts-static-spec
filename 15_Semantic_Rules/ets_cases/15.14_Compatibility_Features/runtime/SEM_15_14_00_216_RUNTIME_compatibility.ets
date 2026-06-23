/*
 * @id SEM_15_14_00_216_RUNTIME_compatibility
 * @expect runtime
 * @section 15.14
 * @design 兼容特性综合验证：字符串数字混合 `||` 链。
 */

function main(): void {
  let a = "" || "default"
  arktest.assertEQ(a, "default")

  let b = 0 || 42
  arktest.assertEQ(b, 42)

  let c = "ok" && 99
  arktest.assertEQ(c, 99)

  let d = null || "fallback"
  arktest.assertEQ(d, "fallback")
}
