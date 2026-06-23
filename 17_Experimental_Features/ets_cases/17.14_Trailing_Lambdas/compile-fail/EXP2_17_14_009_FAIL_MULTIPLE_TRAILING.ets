/**
 * @id EXP2_17_14_009_FAIL_MULTIPLE_TRAILING
 * @expect compile-fail
 * @section 17.14
 * @design 一次调用后出现多个 trailing block 应编译失败
 *        只有最后一个参数可以是 trailing lambda，不支持多个
 * @note 反向用例：多个 trailing block 不合法
 *        编译器报 ESE0124: Expected 2 arguments, got 0
 *        和 ESY0227: Unexpected token '{'
 */
function process(callback1: () => void, callback2: () => void): void {
  callback1()
  callback2()
}

process() { console.log("first") } { console.log("second") }
