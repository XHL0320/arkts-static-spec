/**
 * @id EXP_07_32_01_008_FAIL_READONLY_ARRAY
 * @expect compile-fail
 * @section 7.32.1
 * @design 验证只读数组变量不能赋值为非只读数组的编译时错误
 * @note 反向用例：验证 readonly T[] 类型变量不能被赋值为 T[]（非只读数组）。根据规范，Type of lhsExpression 是 readonly array 而 rhsExpression 的转换后类型是非 readonly array 时产生编译时错误
 */

function main(): void {
  // 非只读数组
  let src: int[] = [1, 2, 3];
  let strSrc: string[] = ["a", "b"];

  // 只读数组变量
  let dest: readonly int[] = [0, 0, 0];
  let strDest: readonly string[] = ["", ""];

  // 尝试将非只读数组赋值给只读数组变量（应报错）
  dest = src;

  // 尝试将非只读 string 数组赋值给只读 string 数组变量（应报错）
  strDest = strSrc;

  console.log("done");
}
