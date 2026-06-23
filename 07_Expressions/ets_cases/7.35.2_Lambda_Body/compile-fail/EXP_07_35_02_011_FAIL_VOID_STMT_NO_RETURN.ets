/**
 * @id EXP_07_35_02_011_FAIL_VOID_STMT_NO_RETURN
 * @expect compile-fail
 * @section 7.35.2
 * @design 验证 Lambda 返回类型非 void/non-never 时，块体仅有 void 语句没有 return 则产生编译时错误
 * @note 反向用例：非 void 返回类型（int）的 lambda 块体中只有 void 调用语句，本质上是块体无 return，应产生编译时错误
 */
function helper(): void {}

function main(): void {
  const f: () => int = (): int => {
    helper()
  }
  let r: int = f()
  console.log("" + r)
}
