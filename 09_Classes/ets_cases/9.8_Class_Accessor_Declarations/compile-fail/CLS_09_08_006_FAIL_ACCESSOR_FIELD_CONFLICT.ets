/**
 * @id CLS_09_08_006_FAIL_ACCESSOR_FIELD_CONFLICT
 * @expect compile-fail
 * @section 9.8
 * @design accessor 名称与非静态字段名称冲突应编译失败
 * @note 反向用例：getter/setter 名称不可与同一 class 的非静态 field 名相同
 */
class Person {
  name: string = ""
  get name(): string { // Compile-time error, getter name clashes with field name
    return this.name
  }
  set name(a_name: string) { // Compile-time error, setter name clashes with field name
    this.name = a_name
  }
}
