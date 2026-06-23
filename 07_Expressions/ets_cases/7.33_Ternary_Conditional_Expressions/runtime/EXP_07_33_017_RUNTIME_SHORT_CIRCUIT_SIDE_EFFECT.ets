/**
 * @id EXP_07_33_017_RUNTIME_SHORT_CIRCUIT_SIDE_EFFECT
 * @expect runtime
 * @section 7.33
 * @design 验证三元条件表达式的短路求值：condition=true 时 whenFalse 不执行（无副作用）；condition=false 时 whenTrue 不执行（无副作用）
 * @note 运行时用例：通过副作用验证短路求值行为
 */

// 全局变量用于跟踪是否被执行
let sideEffectTrue: int = 0;
let sideEffectFalse: int = 0;
let condValue: boolean = true;
let callCount: int = 0;

function getCond(): boolean {
  callCount++;
  return condValue;
}

function doTrueSideEffect(): int {
  sideEffectTrue = 1;
  return 42;
}

function doFalseSideEffect(): int {
  sideEffectFalse = 1;
  return 99;
}

function main(): void {
  // condition=true → whenTrue 执行，whenFalse 不执行
  let r1: int = true ? doTrueSideEffect() : doFalseSideEffect();
  if (r1 != 42) {
    throw new Error("assertion failed: true branch value expected 42, got " + r1);
  }
  if (sideEffectTrue != 1) {
    throw new Error("assertion failed: true branch not executed, sideEffectTrue=" + sideEffectTrue);
  }
  if (sideEffectFalse != 0) {
    throw new Error("assertion failed: false branch executed when condition=true, sideEffectFalse=" + sideEffectFalse);
  }

  // 重置
  sideEffectTrue = 0;
  sideEffectFalse = 0;

  // condition=false → whenFalse 执行，whenTrue 不执行
  let r2: int = false ? doTrueSideEffect() : doFalseSideEffect();
  if (r2 != 99) {
    throw new Error("assertion failed: false branch value expected 99, got " + r2);
  }
  if (sideEffectTrue != 0) {
    throw new Error("assertion failed: true branch executed when condition=false, sideEffectTrue=" + sideEffectTrue);
  }
  if (sideEffectFalse != 1) {
    throw new Error("assertion failed: false branch not executed, sideEffectFalse=" + sideEffectFalse);
  }

  // 条件只求值一次
  condValue = true;
  callCount = 0;
  let r3: int = getCond() ? 1 : 2;
  if (callCount != 1) {
    throw new Error("assertion failed: condition evaluated " + callCount + " times, expected 1");
  }

  console.log("verified");
}
