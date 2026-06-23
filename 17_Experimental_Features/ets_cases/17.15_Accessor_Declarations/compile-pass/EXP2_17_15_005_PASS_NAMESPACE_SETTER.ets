/**
 * @id EXP2_17_15_005_PASS_NAMESPACE_SETTER
 * @expect compile-pass
 * @section 17.15
 * @design 命名空间内声明 setter，使用 export 导出
 * @note 正向用例：验证命名空间 setter 编译通过
 */
namespace MyNS {
  let nsValue: int = 0

  export set nsSetter(v: int) {
    nsValue = v
  }
}
