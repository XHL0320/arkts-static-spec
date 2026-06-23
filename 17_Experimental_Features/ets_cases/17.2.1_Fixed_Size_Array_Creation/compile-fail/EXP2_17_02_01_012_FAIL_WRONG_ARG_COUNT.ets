/**
 * @id EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT
 * @expect compile-fail
 * @section 17.2.1
 * @design FixedArray 构造函数参数数量错误：构造函数 constructor(len: int, elem: T) 要求恰好两个参数，传参不足或超出应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误。构造函数需要 (int, T) 两个参数
 */
function testWrongArgCount(): void {
  let a = new FixedArray<string>(3)
  console.log(a.length)
}
