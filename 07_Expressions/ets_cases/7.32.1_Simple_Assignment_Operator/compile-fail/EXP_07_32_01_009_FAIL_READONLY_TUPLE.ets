/**
 * @id EXP_07_32_01_009_FAIL_READONLY_TUPLE
 * @expect compile-fail
 * @section 7.32.1
 * @design 验证只读元组变量不能赋值为非只读元组的编译时错误
 * @note 反向用例：验证 readonly [T1, T2] 类型变量不能被赋值为非只读元组。根据规范，Type of lhsExpression 是 readonly tuple 而 rhsExpression 的转换后类型是非 readonly tuple 时产生编译时错误
 */

function main(): void {
  // 非只读元组
  let src: [int, string] = [1, "hello"];

  // 只读元组变量
  let dest: readonly [int, string] = [0, ""];

  // 尝试将非只读元组赋值给只读元组变量（应报错）
  dest = src;

  console.log("done");
}
