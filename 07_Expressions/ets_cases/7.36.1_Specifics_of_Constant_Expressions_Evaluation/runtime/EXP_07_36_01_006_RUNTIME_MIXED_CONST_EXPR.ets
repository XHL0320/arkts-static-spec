/**
 * @id EXP_07_36_01_006_RUNTIME_MIXED_CONST_EXPR
 * @expect runtime
 * @section 7.36.1
 * @design 验证混合常量表达式运行时行为：各数值子表达式独立求值（对应 spec 示例）
 * @note 运行时用例：c > 1 && c*2 < 8 等混合常量表达式结果正确
 */

// Spec 示例对应
const c: int = 3
const specResult: boolean = c > 1 && c * 2 < 8

// 其他混合表达式
const r1: boolean = c > 5 || c * 2 < 10

// 三元条件常量
const r2: int = (3 > 1) ? (10 + 20) : (5 * 6)

// 逻辑运算混合
const r3: boolean = (3 < 5) && (10 >= 8) || (7 == 6)
const r4: boolean = !(3 > 5) && (4 != 5)

// 嵌套常量表达式
const r5: boolean = (3 + 5) > (2 * 3) && (10 - 2) == (4 + 4)

// 位运算混合
const r6: int = (0x0F << 4) | (0x0F & 0x03)

// double 与 int 混合
const r7: boolean = (3.0 > 1) && (2.5 * 4 < 15.0)

function main(): void {
  if (specResult != true) {
    throw new Error("assertion failed 1: c>1 && c*2<8 expected true, got false")
  }
  if (r1 != true) {
    throw new Error("assertion failed 2: c>5 || c*2<10 expected true, got false")
  }
  if (r2 != 30) {
    throw new Error("assertion failed 3: (3>1)?(10+20):(5*6) expected 30, got " + r2)
  }
  if (r3 != true) {
    throw new Error("assertion failed 4: (3<5)&&(10>=8)||(7==6) expected true, got false")
  }
  if (r4 != true) {
    throw new Error("assertion failed 5: !(3>5)&&(4!=5) expected true, got false")
  }
  if (r5 != true) {
    throw new Error("assertion failed 6: (3+5)>(2*3)&&(10-2)==(4+4) expected true, got false")
  }
  if (r6 != 0xF3) {
    throw new Error("assertion failed 7: bit op expected 0xF3, got " + r6)
  }
  if (r7 != true) {
    throw new Error("assertion failed 8: double/int mixed expected true, got false")
  }

  console.log("verified")
}
