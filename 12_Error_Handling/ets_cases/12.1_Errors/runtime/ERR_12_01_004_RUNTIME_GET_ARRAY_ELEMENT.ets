/**
 * @id ERR_12_01_004_RUNTIME_GET_ARRAY_ELEMENT
 * @expect runtime
 * @section 12.1
 * @design 数组越界被 try-catch 捕获（spec 原例）
 * @note 运行时用例
 */
function get_array_element<T>(array: T[], index: int): T | undefined {
  try {
    return array[index]
  } catch (error) {
    if (error instanceof RangeError) {
      return undefined
    }
    throw error
  }
}

function main(): void {
  let arr: int[] = [1, 2, 3]
  let val: int | undefined = get_array_element(arr, -3)
  if (val !== undefined) throw new Error("should be undefined")
  console.log("RangeError caught verified")
}