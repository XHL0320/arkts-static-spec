/**
 * @id EXP_07_31_003_PASS_COND_OR_CHAINED
 * @expect compile-pass
 * @section 7.31
 * @design 验证 || 的链式运算、左结合性和完全结合律：((a) || (b)) || (c) 与 (a) || ((b) || (c)) 结果相同
 * @note 正向用例：验证 || 链式运算和结合律编译通过
 */
function main(): void {
  let T: boolean = true;
  let F: boolean = false;

  // 链式：true || true || true == true
  let ch1: boolean = T || T || T;

  // 链式含所有 true：true || true || false == true
  let ch2: boolean = T || T || F;

  // 链式含 true：true || false || true == true
  let ch3: boolean = T || F || T;

  // 链式全 false：false || false || false == false
  let ch4: boolean = F || F || F;

  // 左结合性：(true || false) || true
  let left: boolean = (T || F) || T;

  // 右结合性：true || (false || true)
  let right: boolean = T || (F || T);

  // 完全结合律：((a) || (b)) || (c) 与 (a) || ((b) || (c)) 在 boolean 结果上等价
  let assoc1: boolean = (F || F) || T;
  let assoc2: boolean = F || (F || T);

  // 混合变量
  let a: boolean = true;
  let b: boolean = false;
  let c: boolean = true;

  let mix1: boolean = a || b;
  let mix2: boolean = a || c;
  let mix3: boolean = b || c;
  let mix4: boolean = a || b || c;
  let mix5: boolean = a || (b || c);
  let mix6: boolean = (a || b) || c;

  // 连续 || 链（长链）
  let longChain: boolean = F || F || F || F || T || F;
}
