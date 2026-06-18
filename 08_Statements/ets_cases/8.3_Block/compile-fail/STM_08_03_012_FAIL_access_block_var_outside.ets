/**
 * @id STM_08_03_012_FAIL_access_block_var_outside
 * @expect compile-fail
 * @section 8.3
 * @design 块内声明的 let 变量作用域限定在块内，块外访问该变量应产生编译错误
 * @note 反向用例：在块外引用块内声明的变量，违反块作用域规则
 */
function testAccessBlockVarOutside(): void {
  {
    let secret: int = 42
  }
  // secret is not visible here — this MUST be a compile error
  let leaked: int = secret
}

function testNestedBlockVarNotVisibleInOuter(): void {
  let outer: int = 0
  {
    {
      let deep: int = 99
    }
    // deep is not visible here — this MUST be a compile error
    outer = deep
  }
}

function testBlockVarInExpressionOutside(): void {
  let result: int = 0
  {
    let val: int = 7
  }
  // val is not visible — using it in an expression MUST be a compile error
  result = val + 3
}
