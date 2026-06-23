/**
 * @id EXP2_17_12_010_FAIL_PRIVATE_CALLED_EXTERNALLY
 * @expect compile-fail
 * @section 17.12
 * @design 接口中声明私有默认方法，在实现类外部（main函数中）直接调用该私有方法，应产生编译错误
 * @note 反向用例：私有默认方法不可从接口外部访问
 */
interface ISecret {
  private secretCode(): string {
    return "classified"
  }

  getPublicInfo(): string {
    return "public info: " + this.secretCode()
  }
}

class Agent implements ISecret {
}

function main(): void {
  let a: Agent = new Agent()
  let info: string = a.getPublicInfo()
  console.log(info)
  // 以下调用应产生编译错误：私有方法不可访问
  let code: string = a.secretCode()
  console.log(code)
}
