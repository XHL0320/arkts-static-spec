/**
 * @id EXP_07_35_01_008_FAIL_DUPLICATE_PARAM_NAME
 * @expect compile-fail
 * @section 7.35.1
 * @design 验证 Lambda 表达式声明两个同名的形式参数时产生编译时错误
 * @note 反向用例：Lambda 签名中两个形式参数同名（x, x）应产生编译时错误
 */
function main(): void {
  // 两个参数同名 x
  const f: (a: int, b: int) => int = (x: int, x: int) => x + x
  let r: int = f(1, 2)
  console.log("" + r)
}
