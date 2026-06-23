/**
 * @id EXP2_17_16_1_023_RUNTIME_STRING_ARRAY
 * @expect runtime
 * @section 17.16.1
 * @design 运行时验证字符串数组解构——验证不同元素类型的解构行为
 * @note 运行时用例：实际执行验证从字符串数组解构出正确的字符串值
 */
function main(): void {
  let arr: string[] = ["alpha", "beta", "gamma"]
  let [first, , third] = arr
  if (first != "alpha") {
    throw new Error("FAIL: first should be 'alpha', got: " + first)
  }
  if (third != "gamma") {
    throw new Error("FAIL: third should be 'gamma', got: " + third)
  }
  console.log("PASS: string array destructuring correct: first=" + first + " third=" + third)
}
