/**
 * @id CLS_09_02_005_FAIL_EXTENDS_INTERFACE
 * @expect compile-fail
 * @section 9.2
 * @design extends子句指向接口类型应编译失败
 * @note 反向用例：spec §9.2规定extends只能指向类类型，不能指向接口
 */
interface ISerializable {
  serialize(): string
}
class BadClass extends ISerializable {
}
