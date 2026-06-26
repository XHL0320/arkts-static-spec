/**
 * @id EXP_07_35_04_002_PASS_LAMBDA_UNINITIALIZED_CAPTURE
 * @expect compile-pass
 * @section 7.35.4
 * @design Lambda 捕获未初始化变量 — es2panda 编译通过
 * @note 正向用例：⚠️ SPEC 不一致：spec §7.35.2 要求编译错误，但 es2panda 编译通过
 */
function testLambdaUninitializedCapture(): void {
  let x: int
  let f: () => int = () => x
  console.log(f().toString())
}
