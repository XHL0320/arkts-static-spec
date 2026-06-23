/**
 * @id EXP2_17_15_004_PASS_NAMESPACE_GETTER
 * @expect compile-pass
 * @section 17.15
 * @design 命名空间内声明 getter，使用 export 导出
 * @note 正向用例：验证命名空间 getter 编译通过
 */
namespace MyNS {
  let nsValue: int = 100

  export get nsGetter(): int {
    return nsValue
  }
}
