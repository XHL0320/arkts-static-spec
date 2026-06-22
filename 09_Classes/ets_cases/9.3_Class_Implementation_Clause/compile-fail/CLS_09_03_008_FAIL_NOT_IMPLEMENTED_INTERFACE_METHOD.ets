/**
 * @id CLS_09_03_008_FAIL_NOT_IMPLEMENTED_INTERFACE_METHOD
 * @expect compile-fail
 * @section 9.3
 * @design 非抽象类未实现接口方法导致编译错误
 * @note 反向用例：非抽象类必须实现所有接口方法
 */
interface IMustImpl {
  requiredMethod(): void
}
class MissingImpl implements IMustImpl {
}
