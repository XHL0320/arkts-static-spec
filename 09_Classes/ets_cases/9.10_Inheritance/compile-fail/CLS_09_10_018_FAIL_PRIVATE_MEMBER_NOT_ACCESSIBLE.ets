/**
 * @id CLS_09_10_018_FAIL_PRIVATE_MEMBER_NOT_ACCESSIBLE
 * @expect compile-fail
 * @section 9.10
 * @design 父类的private成员虽然被继承但不可被子类访问，在子类中直接访问private字段或方法导致编译错误
 * @note 反向用例：子类尝试直接访问父类private字段和方法，触发编译时错误
 */
class Parent {
  private secret: string = "classified"
  private encrypt(data: string): string {
    return "enc_" + data
  }

  public getSecret(): string {
    return this.secret
  }
}

class Child extends Parent {
  public leak(): string {
    return this.secret            // Compile-time error: private member not accessible
  }

  public reEncrypt(): string {
    return this.encrypt("msg")    // Compile-time error: private method not accessible
  }
}
