/**
 * @id LEX_02_06_019_PASS_INTERFACE_NAME
 * @expect compile-pass
 * @section 2.6
 * @design 标识符作为接口名
 * @note 正向用例：Unicode 字符作接口名
 */
interface 可绘制019 {
  绘制(): void
}

class 圆形019 implements 可绘制019 {
  绘制(): void {}
}

function testInterfaceName(): void {
  let c: 可绘制019 = new 圆形019()
}
