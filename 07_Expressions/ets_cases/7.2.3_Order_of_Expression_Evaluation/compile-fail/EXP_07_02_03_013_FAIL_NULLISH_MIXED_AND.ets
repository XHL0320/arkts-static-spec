/**
 * @id EXP_07_02_03_013_FAIL_NULLISH_MIXED_AND
 * @expect compile-fail
 * @section 7.2.3
 * @design 验证 nullish 合并与 && 混合无括号报编译时错误
 * @note 反向用例：spec 规定 ?? 与 && 或 || 混合时必须加括号
 */
function main(): void {
  let x: int = 5;
  let y: int = x ?? 0 && 1;
}
