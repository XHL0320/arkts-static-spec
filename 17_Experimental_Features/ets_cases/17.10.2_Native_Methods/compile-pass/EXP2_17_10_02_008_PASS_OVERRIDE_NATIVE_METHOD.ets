/**
 * @id EXP2_17_10_02_008_PASS_OVERRIDE_NATIVE_METHOD
 * @expect compile-pass
 * @section 17.10.2
 * @design 子类覆盖父类的原生方法：验证 override 可以将父类的 native method 重写为普通方法
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class BaseService {
  native getData(): string
}
class ExtendedService extends BaseService {
  override getData(): string {
    return "override data"
  }
}
