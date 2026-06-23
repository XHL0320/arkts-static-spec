/**
 * @id CLS_09_03_1_011_FAIL_OVERRIDE_FIELD_BY_ACCESSOR
 * @expect compile-fail
 * @section 9.3.1
 * @design 覆盖超类字段→accessor导致编译错误
 * @note 反向用例：spec规定不能覆盖超类字段为accessor
 */
interface IFieldInt {
  n: number
}
class CFieldInt implements IFieldInt {
  n: number = 1
}
class C1Override extends CFieldInt {
  get n(): number { return 1 }
}
