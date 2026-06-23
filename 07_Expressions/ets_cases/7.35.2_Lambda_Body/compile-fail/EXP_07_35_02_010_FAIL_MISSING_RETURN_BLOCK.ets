/**
 * @id EXP_07_35_02_010_FAIL_MISSING_RETURN_BLOCK
 * @expect compile-fail
 * @section 7.35.2
 * @design 验证 Lambda 返回类型既不是 void 也不是 never 时，若块体没有 return 语句且不是单表达式体则产生编译时错误
 * @note 反向用例：非 void 返回类型的 lambda 使用空块体（没有 return），应产生编译时错误
 */
function main(): void {
  const f: () => int = (): int => {
  }
  let r: int = f()
  console.log("" + r)
}
