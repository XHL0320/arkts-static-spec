/**
 * @id STM_08_05_003_PASS_NESTED_IF_ELSE
 * @expect compile-pass
 * @section 8.5
 * @design 嵌套 if-else 语句，验证 dangling else 绑定到最近 if 的语法
 * @note 正向用例：多层嵌套 if-else 及 else if 链式写法
 */
function testNestedIfElse(): void {
  let a: int = 1
  let b: int = 2
  let result: int = 0

  // 两层嵌套 if-else
  if (a > 0) {
    if (b > 1) {
      result = 1
    } else {
      result = 2
    }
  } else {
    result = 3
  }

  // dangling else 绑定到最近 if（无块语法）
  if (a > 0)
    if (b > 1)
      result = 4
    else
      result = 5

  // else if 链式写法
  if (a > 100) {
    result = 6
  } else if (a > 50) {
    result = 7
  } else if (a > 0) {
    result = 8
  } else {
    result = 9
  }

  // 关系运算作为条件表达式
  if (a == b) {
    result = 10
  }
  if (a != b) {
    result = 11
  }
  if (a <= b) {
    result = 12
  }
}
