/**
 * @id LEX_02_03_028_FAIL_LOGICAL_AND_SPLIT
 * @expect compile-fail
 * @section 2.3
 * @design 逻辑与 && 中间含 Space 拆为 & & 改变运算符语义，导致语法/语义错误 * @note 反向用例：验证该场景应产生编译时错误

 */
function testLogicalAndSplit(): void {
  let a: boolean = true
  let b: boolean = false
  let c: boolean = a & & b
}
