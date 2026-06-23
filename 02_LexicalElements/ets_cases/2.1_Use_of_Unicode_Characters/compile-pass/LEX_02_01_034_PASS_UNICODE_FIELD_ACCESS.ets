/**
 * @id LEX_02_01_034_PASS_UNICODE_FIELD_ACCESS
 * @expect compile-pass
 * @section 2.1
 * @design 测试因子checklist: 作为字段读取后再使用 - Unicode字段声明、访问、继承
 * @note 正向用例：验证Unicode标识符在类字段、继承、接口实现中正确使用
 */
interface 可描述 {
  描述(): string
}

class 动物 implements 可描述 {
  名字: string = ""
  年龄: number = 0
  描述(): string {
    return this.名字 + "，" + this.年龄.toString() + "岁"
  }
}

class 猫 extends 动物 {
  品种: string = ""
  描述(): string {
    return super.描述() + "，品种：" + this.品种
  }
}

function main(): void {
  let 小猫: 猫 = new 猫()
  小猫.名字 = "小花"
  小猫.年龄 = 3
  小猫.品种 = "英短"
  let 结果: string = 小猫.描述()
}