/**
 * @id LEX_02_07_034_PASS_SOFT_KW_NAMESPACE
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字: namespace 用于命名空间声明
 * @note 正向用例：namespace 在命名空间上下文中
 */
namespace Util034 {
  export function multiply(x: int): int {
    return x * 2
  }
}

function test034(): void {
  let r: int = Util034.multiply(5)
}
