/**
 * @id EXP2_17_10_02_006_PASS_NATIVE_METHOD_GENERIC
 * @expect compile-pass
 * @section 17.10.2
 * @design 原生方法使用泛型类型参数：验证 native method 可以带有泛型类型参数
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class GenericService {
  native getValue<T>(key: string): T
  native setValue<T>(key: string, value: T): void
}
