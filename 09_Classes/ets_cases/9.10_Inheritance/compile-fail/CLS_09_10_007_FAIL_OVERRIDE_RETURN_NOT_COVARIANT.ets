/**
 * @id CLS_09_10_007_FAIL_OVERRIDE_RETURN_NOT_COVARIANT
 * @expect compile-fail
 * @section 9.10
 * @design 使用override关键字重写方法，但返回类型不满足协变（派生类返回类型不是基类返回类型的子类型），编译失败
 * @note 反向用例：基类返回AppleFruit，派生类声明override但返回FruitBase（FruitBase不是AppleFruit的子类型）
 */
class FruitBase {
  public name: string = "fruit"
}

class AppleFruit extends FruitBase {
  public color: string = "red"
}

class JuiceMaker {
  public make(): AppleFruit {
    return new AppleFruit()
  }
}

class OrangeJuiceMaker extends JuiceMaker {
  override make(): FruitBase {
    // 错误：override声明但FruitBase不是AppleFruit的子类型，违反返回类型协变
    return new FruitBase()
  }
}
