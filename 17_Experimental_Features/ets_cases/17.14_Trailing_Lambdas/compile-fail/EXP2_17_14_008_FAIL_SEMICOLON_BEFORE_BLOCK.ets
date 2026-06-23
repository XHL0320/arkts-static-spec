/**
 * @id EXP2_17_14_008_FAIL_SEMICOLON_BEFORE_BLOCK
 * @expect compile-fail
 * @section 17.14
 * @design 分号出现在调用和 block 之间时，block 不是 trailing lambda
 *        此时 process() 缺少必需参数，应编译失败
 * @note 反向用例：spec 规定分号前的 block 不作为 trailing lambda
 *        编译器报 ESE0124: Expected 1 arguments, got 0
 */
function process(callback: () => void): void {
  callback()
}

process(); { console.log("not a trailing lambda, standalone block") }
