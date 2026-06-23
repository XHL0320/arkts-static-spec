/**
 * @id CLS_09_07_014_FAIL_RETURN_NON_THIS
 * @expect compile-fail
 * @section 9.7.8
 * @design 声明返回this的方法，只能直接return this或调用另一返回this的方法的结果，返回其他值为编译错误
 * @note 反向用例：返回this类型的方法中return new对象实例，违反返回规则
 */
class Factory014 {
  name: string = ""

  setName(n: string): this {
    this.name = n
    return this
  }

  // Error: method declared to return 'this' must not return a new instance
  clone(): this {
    return new Factory014()
  }

  // Error: method declared to return 'this' must not return a literal
  badReturn(): this {
    return 0
  }
}
