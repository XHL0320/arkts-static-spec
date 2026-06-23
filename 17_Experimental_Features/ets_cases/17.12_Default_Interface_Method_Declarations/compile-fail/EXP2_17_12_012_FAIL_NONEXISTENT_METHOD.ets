/**
 * @id EXP2_17_12_012_FAIL_NONEXISTENT_METHOD
 * @expect compile-fail
 * @section 17.12
 * @design 实现接口的类实例上调用接口中不存在的方法，应产生编译错误
 * @note 反向用例：接口默认方法不会使实现类获得接口声明之外的方法
 */
interface IBasic {
  greet(): void {
    console.log("Hello")
  }
}

class Simple implements IBasic {
}

function main(): void {
  let s: Simple = new Simple()
  s.greet() // 合法：greet 是接口的默认方法

  // 以下调用应产生编译错误：nonExistentMethod 不在接口中
  s.nonExistentMethod()
}
