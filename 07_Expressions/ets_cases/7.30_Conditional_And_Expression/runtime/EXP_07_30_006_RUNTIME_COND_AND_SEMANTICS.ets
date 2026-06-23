/**
 * @id EXP_07_30_006_RUNTIME_COND_AND_SEMANTICS
 * @expect runtime
 * @section 7.30
 * @design 验证 boolean && 运算符的运行时语义：真值表正确性、短路行为（LHS 为 false 时 RHS 不执行）、链式运算、结合律、变量运算、与 & 一致性
 * @note 运行时用例：验证 && 的运行时值语义和短路特性，共 24 个断言
 */
let effectFlag: boolean = false;

function setEffect(): boolean {
  effectFlag = true;
  return true;
}

function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  let T: boolean = true;
  let F: boolean = false;

  // === && (Conditional AND) 真值表 ===
  assert((T && T) == true, "true && true should be true");
  assert((T && F) == false, "true && false should be false");
  assert((F && T) == false, "false && true should be false");
  assert((F && F) == false, "false && false should be false");

  // === 短路行为验证 ===
  effectFlag = false;
  let short1: boolean = F && setEffect();
  assert(short1 == false, "false && true should be false (short-circuit)");
  assert(effectFlag == false, "short-circuit: RHS should NOT be evaluated when LHS is false");

  effectFlag = false;
  let short2: boolean = T && setEffect();
  assert(short2 == true, "true && true should be true (no short-circuit)");
  assert(effectFlag == true, "no short-circuit: RHS SHOULD be evaluated when LHS is true");

  // === 链式运算 ===
  assert((T && T && T) == true, "true && true && true should be true");
  assert((T && T && F) == false, "true && true && false should be false");
  assert((T && F && T) == false, "true && false && true should be false");
  assert((F && T && T) == false, "false && true && true should be false");

  // === 结合律验证：((a) && (b)) && (c) 等价于 (a) && ((b) && (c)) ===
  let a: boolean = true;
  let b: boolean = false;
  let c: boolean = true;
  let left: boolean = (a && b) && c;
  let right: boolean = a && (b && c);
  assert(left == right, "(a&&b)&&c should equal a&&(b&&c) for a=true,b=false,c=true");
  assert(left == false, "(true&&false)&&true should be false");

  let left2: boolean = (T && T) && F;
  let right2: boolean = T && (T && F);
  assert(left2 == right2, "(T&&T)&&F should equal T&&(T&&F)");
  assert(left2 == false, "(true&&true)&&false should be false");

  // === 变量运算 ===
  assert((a && a) == true, "a && a where a=true should be true");
  assert((a && b) == false, "a && b where a=true, b=false should be false");
  assert((b && a) == false, "b && a where b=false, a=true should be false");
  assert((b && b) == false, "b && b where b=false should be false");

  // === 与 & 的一致性验证 (结果相同) ===
  assert((T && T) == (T & T), "true && true should equal true & true");
  assert((T && F) == (T & F), "true && false should equal true & false");
  assert((F && T) == (F & T), "false && true should equal false & true");
  assert((F && F) == (F & F), "false && false should equal false & false");

  console.log("PASS: All 24 assertions passed for Conditional-And Expression");
}
