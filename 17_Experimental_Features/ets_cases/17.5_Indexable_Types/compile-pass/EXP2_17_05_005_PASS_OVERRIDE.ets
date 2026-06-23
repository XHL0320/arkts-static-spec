/**
 * @id EXP2_17_05_005_PASS_OVERRIDE
 * @expect compile-pass
 * @section 17.5
 * @design 父类定义 $_get，子类重写（override）$_get 提供不同实现
 * @note 正向用例：验证子类可以重写父类的 $_get 方法
 */
class BaseIndexable {
  $_get(index: number): string {
    return "base"
  }
}

class DerivedIndexable extends BaseIndexable {
  $_get(index: number): string {
    return "derived_" + index.toString()
  }
}

function testOverride(): void {
  let base: BaseIndexable = new BaseIndexable()
  let derived: BaseIndexable = new DerivedIndexable()
  let b: string = base[0]
  let d: string = derived[0]
}
