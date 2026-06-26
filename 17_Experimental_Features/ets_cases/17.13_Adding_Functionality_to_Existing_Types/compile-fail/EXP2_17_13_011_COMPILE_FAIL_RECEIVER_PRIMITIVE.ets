/**
 * @id EXP2_17_13_011_COMPILE_FAIL_RECEIVER_PRIMITIVE
 * @expect compile-fail
 * @section 17.13
 * @design 验证原始类型作 receiver——应报编译错误
 * @note 反向用例（负向看护）：spec §17.13 receiver 类型只能为 class/interface/array，原始类型(int)应报 compile-time error；es2panda 当前编译通过（unexpected-pass），属编译器未实现检查。差异见 issue_report
 */
function broken(this: int): void {}

function main(): void {}
