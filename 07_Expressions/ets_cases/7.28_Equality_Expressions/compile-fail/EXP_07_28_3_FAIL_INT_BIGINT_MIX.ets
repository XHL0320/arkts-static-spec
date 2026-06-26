/**
 * @id EXP_07_28_3_FAIL_INT_BIGINT_MIX
 * @expect compile-fail
 * @section 7.28
 * @design int与bigint相等应报错
 * @note 反向用例（负向看护）：spec §7.28 规定该操作数类型组合不满足相等比较条件，应 compile-time error；es2panda 当前未实现检查、编译通过（unexpected pass），待编译器补全后转为预期失败。D 类 Spec/实现差异（见 issue_report）。
 */

function testIntBigintMixFail(): void {
  let r: boolean = 5 == 5n
}
