/**
 * @id EXP2_17_10_02_004_PASS_PRIVATE_NATIVE_METHOD
 * @expect compile-pass
 * @section 17.10.2
 * @design 私有原生方法：验证 private 和 native 修饰符可以组合使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class InternalService {
  private native internalCompute(data: int): int
  native publicCompute(data: int): int
}
