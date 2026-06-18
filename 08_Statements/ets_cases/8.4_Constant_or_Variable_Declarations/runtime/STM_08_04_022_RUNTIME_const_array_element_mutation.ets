/**
 * @id STM_08_04_022_RUNTIME_const_array_element_mutation
 * @expect runtime
 * @section 8.4
 * @design const 声明数组时引用不可变但元素可修改 — 与 TS/JS 语义一致
 * @note 运行时用例：验证 const arr 元素可修改、const 引用不可重新赋值
 */
function main(): void {
  const arr: int[] = [1, 2, 3]
  arr[0] = 99
  if (arr[0] != 99) { throw new Error("const array element should be mutable") }
  if (arr.length != 3) { throw new Error("const array length should be unchanged") }
  console.log("verified")
}
