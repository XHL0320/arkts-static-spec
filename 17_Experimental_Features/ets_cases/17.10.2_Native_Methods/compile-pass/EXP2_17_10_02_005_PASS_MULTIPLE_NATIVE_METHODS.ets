/**
 * @id EXP2_17_10_02_005_PASS_MULTIPLE_NATIVE_METHODS
 * @expect compile-pass
 * @section 17.10.2
 * @design 多个原生方法共存：验证一个类中可以包含多个原生方法，不同签名
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class MultiNativeService {
  native init(): void
  native connect(url: string): boolean
  native send(data: string): int
  native receive(): string
  native close(): void
}
