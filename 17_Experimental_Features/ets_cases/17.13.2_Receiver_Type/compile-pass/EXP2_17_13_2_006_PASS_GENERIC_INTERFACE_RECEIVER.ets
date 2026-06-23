/**
 * @id EXP2_17_13_2_006_PASS_GENERIC_INTERFACE_RECEIVER
 * @expect compile-pass
 * @section 17.13.2
 * @design 泛型接口作为接收者类型：合法接收者类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
interface IContainer<T> { element: T | undefined }
class StringContainer implements IContainer<string> { element: string | undefined }
function hasElement<T>(this: IContainer<T>): boolean { return this.element != undefined }
function testGenericInterfaceReceiver(): void {
  let sc: StringContainer = new StringContainer()
  sc.element = "present"
  let result: boolean = sc.hasElement()
  console.log("compiled successfully")
}
