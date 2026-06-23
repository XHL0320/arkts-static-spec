/**
 * @id EXP_07_28_03_001_PASS_NULL_EQ_UNDEFINED
 * @expect compile-pass
 * @section 7.28.3
 * @design 验证 null == undefined 扩展等值编译通过（null 和 undefined 字面量直接比较）
 * @note 正向用例：null == undefined 应编译通过，扩展等值语义使 == 返回 true
 */
function main(): void {
  let r1: boolean = null == undefined;
  let r2: boolean = null === undefined;
}
