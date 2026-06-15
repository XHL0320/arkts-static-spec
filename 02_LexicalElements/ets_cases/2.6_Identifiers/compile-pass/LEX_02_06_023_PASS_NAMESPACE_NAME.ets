/**
 * @id LEX_02_06_023_PASS_NAMESPACE_NAME
 * @expect compile-pass
 * @section 2.6
 * @design 标识符作为命名空间名
 * @note 正向用例：命名空间支持 Unicode 标识符
 */
namespace 工具集023 {
  export function 加法(a: int, b: int): int {
    return a + b
  }
}

function testNamespaceName(): void {
  let r: int = 工具集023.加法(1, 2)
}
