/**
 * @id STM_08_04_023_FAIL_const_array_reassign
 * @expect compile-fail
 * @section 8.4
 * @design const 数组引用不可重新赋值 — 区别于元素修改（元素修改是允许的）
 * @note 反向用例：const arr 重新赋值整个数组应编译失败
 */
function test(): void {
  const arr: int[] = [1, 2, 3]
  arr = [4, 5, 6]
}
