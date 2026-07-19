/**
 * @id EXP_07_28_5_FAIL_OBJECT_INT_EQ
 * @expect compile-pass
 * @section 7.28
 * @design Object与int相等应报错
 * @note 反向用例（负向看护）：spec §7.28 规定该操作数类型组合不满足相等比较条件，应 compile-time error；es2panda 当前未实现检查、编译通过（unexpected pass），待编译器补全后转为预期失败。D 类 Spec/实现差异（见 issue_report）。
 */

function testObjectIntEqFail(): void {
  let o: Object = new Object(); let r: boolean = o == 5
}

