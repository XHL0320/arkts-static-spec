/**
 * @id EXP_07_03_007_FAIL_FLOAT_TOO_LARGE
 * @expect compile-fail
 * @section 7.3
 * @design 验证超出 float/double 范围的浮点数字面量产生编译时错误
 * @note 反向用例：浮点数字面量超出类型范围应产生编译时错误
 */
function main(): void {
  let x: float = 3.4e39f
  console.log("" + x)
}
