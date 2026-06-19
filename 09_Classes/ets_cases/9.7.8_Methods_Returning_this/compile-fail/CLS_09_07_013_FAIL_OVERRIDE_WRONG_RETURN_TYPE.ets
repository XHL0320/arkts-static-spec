/**
 * @id CLS_09_07_013_FAIL_OVERRIDE_WRONG_RETURN_TYPE
 * @expect compile-fail
 * @section 9.7.8
 * @design 重写返回this的方法时，子类返回类型必须为this（或父类型的超接口/超类），否则编译失败
 * @note 反向用例：子类重写返回this的方法，但声明返回void，违反override兼容性规则
 */
class Builder013 {
  value: int = 0

  setValue(v: int): this {
    this.value = v
    return this
  }
}

class BadBuilder013 extends Builder013 {
  // Error: override of setValue must also return this (or supertype of this class)
  override setValue(v: int): void {
    this.value = v
  }
}
