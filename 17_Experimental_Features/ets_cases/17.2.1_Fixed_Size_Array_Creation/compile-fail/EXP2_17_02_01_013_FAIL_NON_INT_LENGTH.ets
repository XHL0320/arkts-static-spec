/**
 * @id EXP2_17_02_01_013_FAIL_NON_INT_LENGTH
 * @expect compile-fail
 * @section 17.2.1
 * @design FixedArray 构造函数第一个参数长度必须为 int 类型：传入非 int 类型（如 float）应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误。constructor(len: int, elem: T) 要求 len 为 int
 */
function testNonIntLength(): void {
  let a = new FixedArray<string>(3.5, "a")
  console.log(a.length)
}
