/**
 * @id EXP_07_03_002_PASS_FLOAT_BIGINT_LITERAL
 * @expect compile-pass
 * @section 7.3
 * @design 验证浮点数字面量和 bigint 字面量编译通过
 * @note 正向用例：验证 float/double/bigint 字面量作为表达式的基本编译通过用法
 */
function main(): void {
  let d1: double = 3.14
  let d2: double = 1e10
  let d3: double = .5
  let d4: double = 1e-5
  let f1: float = 3.14f
  let f2: float = 1234f
  let f3: float = 1e10f
  let underscore: double = 3.141_592
  let bi1: bigint = 153n
  let bi2: bigint = 0n
  let bi3: bigint = 1_000n
  console.log("verified")
}
