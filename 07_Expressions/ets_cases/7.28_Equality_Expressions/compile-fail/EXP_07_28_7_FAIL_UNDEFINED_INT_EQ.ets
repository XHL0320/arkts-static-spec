/**
 * @id EXP_07_28_7_FAIL_UNDEFINED_INT_EQ
 * @expect compile-fail
 * @section 7.28
 * @design undefined与int相等应报错
 * @note 反向用例（负向看护）：spec §7.28 规定该操作数类型组合不满足相等比较条件，应 compile-time error；es2panda 当前未实现检查、编译通过（unexpected pass），待编译器补全后转为预期失败。D 类 Spec/实现差异（见 issue_report）。
 */

function testUndefinedIntEqFail(): void {
  let r: boolean = undefined == 5
}
