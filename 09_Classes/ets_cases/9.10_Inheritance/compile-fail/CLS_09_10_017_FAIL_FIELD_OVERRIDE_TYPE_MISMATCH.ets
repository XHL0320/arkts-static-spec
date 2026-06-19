/**
 * @id CLS_09_10_017_FAIL_FIELD_OVERRIDE_TYPE_MISMATCH
 * @expect compile-fail
 * @section 9.10
 * @design 派生类同名字段的类型与基类字段类型不同时，编译失败（override field要求类型相同）
 * @note 反向用例：基类字段为int，派生类声明同名字段但类型为string，类型不匹配导致编译错误
 */
class BaseData {
  public value: int = 100
  public count: double = 1.5
}

class DerivedData extends BaseData {
  value: string = "abc"     // Compile-time error: type string != int
  override count: int = 5   // Compile-time error: type int != double
}
