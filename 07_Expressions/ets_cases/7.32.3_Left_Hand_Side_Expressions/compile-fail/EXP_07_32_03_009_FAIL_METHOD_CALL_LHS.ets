/**
 * @id EXP_07_32_03_009_FAIL_METHOD_CALL_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证方法/函数调用（Method/Function Call）不能作为左值表达式：函数调用 foo()、方法调用 obj.method() 均不可出现在赋值左侧
 * @note 反向用例：方法调用不是五种有效左值形式之一，应产生 compile-time error
 */
function foo(): int {
  return 42;
}

class Helper {
  getValue(): int {
    return 99;
  }
}

function main(): void {
  let x: int = 0;

  // 函数调用作为左值（应报错）
  foo() = x;

  // 方法调用作为左值（应报错）
  let h: Helper = new Helper();
  h.getValue() = x;

  console.log("done");
}
