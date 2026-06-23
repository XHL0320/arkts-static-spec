/**
 * @id EXP2_17_14_007_FAIL_NOT_FUNCTION_TYPE
 * @expect compile-fail
 * @section 17.14
 * @design 最后一个参数不是函数类型时，使用 trailing lambda 语法应编译失败
 * @note 反向用例：process 的最后一个参数是 int 而非函数类型，trailing block 不匹配
 *       编译器应报 ESE0140: No matching call signature with trailing lambda
 */
function process(x: int): void {
  console.log(x)
}

process(42) { console.log("should not compile as trailing lambda") }
