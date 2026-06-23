/**
 * @id CLS_09_03_004_PASS_REPEATED_INTERFACE_IGNORED
 * @expect compile-pass
 * @section 9.3
 * @design implements子句中重复的接口被忽略，编译通过
 * @note 正向用例：spec规定implements中同一接口重复出现被忽略
 */
interface ISimple {
  doIt(): void
}
class RepeatedImpl implements ISimple, ISimple {
  doIt(): void {}
}
