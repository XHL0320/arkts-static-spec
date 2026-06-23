/**
 * @id EXP_07_27_8_FAIL_ARRAY_INT_CMP
 * @expect compile-fail
 * @section 7.27
 * @design array 与 int 比较应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function testArrayIntCmpFail(): void {
  let a: int[] = [1,2,3]; let r: boolean = a < 10
}
