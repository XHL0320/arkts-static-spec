/**
 * @id EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY
 * @expect compile-pass
 * @section 17.4
 * @design 函数类型数组创建：type Functor = () => void; new Functor[3]((): void => {}) 创建函数类型数组
 * @note 正向用例：验证函数类型（通过顶层 type alias）作为数组元素类型编译通过
 */
type Functor = () => void

function testFunctionTypeArrayCreation(): void {
  let arr = new Functor[3]((): void => {})
  console.log(arr.length)
  console.log(arr[0])
}
