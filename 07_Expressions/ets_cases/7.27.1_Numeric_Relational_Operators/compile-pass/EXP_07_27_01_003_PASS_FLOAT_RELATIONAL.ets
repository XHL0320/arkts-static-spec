/**
 * @id EXP_07_27_01_003_PASS_FLOAT_RELATIONAL
 * @expect compile-pass
 * @section 7.27.1
 * @design 验证 float 类型的 <, <=, >, >= 四个数值关系运算符的编译通过
 * @note 正向用例：float 类型的数值关系运算符应正常编译
 */
function main(): void {
  let a: float = 1.5f;
  let b: float = 2.5f;
  let r1: boolean = a < b;
  let r2: boolean = a <= b;
  let r3: boolean = a > b;
  let r4: boolean = a >= b;

  // float 字面量
  let r5: boolean = -3.14f < 0.0f;
  let r6: boolean = 0.0f >= -0.0f;

  // spec 示例：1 <= 1.0f
  let r7: boolean = 1 <= 1.0f;
}
