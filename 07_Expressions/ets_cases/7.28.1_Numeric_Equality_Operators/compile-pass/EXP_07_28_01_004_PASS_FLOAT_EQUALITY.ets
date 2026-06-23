/**
 * @id EXP_07_28_01_004_PASS_FLOAT_EQUALITY
 * @expect compile-pass
 * @section 7.28.1
 * @design 验证 float 类型的 ==, != 等值运算符编译通过
 * @note 正向用例：float 类型的等值运算符应正常编译，包括 NaN 和 Inf 等特殊值
 */
function main(): void {
  let a: float = 1.0f;
  let b: float = 2.0f;
  let r1: boolean = a == b;
  let r2: boolean = a != b;

  // float 特殊值
  let nan: float = 0.0f / 0.0f;
  let r3: boolean = nan == 1.0f;
  let r4: boolean = nan != nan;

  let inf: float = 1.0f / 0.0f;
  let negInf: float = -1.0f / 0.0f;
  let r5: boolean = inf == inf;
  let r6: boolean = inf != negInf;

  let negZero: float = -0.0f;
  let zero: float = 0.0f;
  let r7: boolean = negZero == zero;
}
