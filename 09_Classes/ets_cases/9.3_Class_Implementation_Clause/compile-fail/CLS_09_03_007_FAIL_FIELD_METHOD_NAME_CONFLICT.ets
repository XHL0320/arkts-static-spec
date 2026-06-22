/**
 * @id CLS_09_03_007_FAIL_FIELD_METHOD_NAME_CONFLICT
 * @expect compile-fail
 * @section 9.3
 * @design 类字段与继承的接口方法同名导致编译错误
 * @note 反向用例：spec规定类字段与继承方法同名（static/instance冲突）报错
 */
interface IHasMethod {
  data(): string
}
class ConflictImpl implements IHasMethod {
  data: string = "field"
}
