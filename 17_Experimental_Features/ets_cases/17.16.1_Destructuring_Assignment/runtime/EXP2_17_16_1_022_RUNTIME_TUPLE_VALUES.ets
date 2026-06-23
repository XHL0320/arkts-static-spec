/**
 * @id EXP2_17_16_1_022_RUNTIME_TUPLE_VALUES
 * @expect runtime
 * @section 17.16.1
 * @design 运行时验证元组解构提取的值正确（含不同类型）
 * @note 运行时用例：实际执行验证从 [int, string] 元组解构出正确类型和值
 */
function main(): void {
  let tup: [int, string] = [42, "world"]
  let [num, str] = tup
  if (num != 42) {
    throw new Error("FAIL: num should be 42, got: " + num)
  }
  if (str != "world") {
    throw new Error("FAIL: str should be 'world', got: " + str)
  }
  console.log("PASS: tuple destructuring correct: num=" + num + " str=" + str)
}
