/**
 * @id EXP2_MethodOverload_OverrideDispatch_runtime
 * @expect runtime
 * @section 17.9.2
 * @design 子类覆盖 overload 后运行时调用子类方法
 * @note 运行时用例：验证多态 dispatch
 */
let overrideLog: string = ""

class Animal {
  speakInt(a: int): string { overrideLog += "ani-int"; return "ani:" + a }
  speakStr(a: string): string { overrideLog += "ani-str"; return "ani:" + a }
  overload speak { speakInt, speakStr }
}

class Dog extends Animal {
  speakInt(a: int): string { overrideLog += "dog-int"; return "dog:" + a }
  speakStr(a: string): string { overrideLog += "dog-str"; return "dog:" + a }
  overload speak { speakInt, speakStr }
}

function main(): void {
  let a: Animal = new Dog()
  overrideLog = ""
  let r1: string = a.speak(42)
  if (overrideLog != "dog-int") {
    throw new Error("Expected dog-int dispatch, got: " + overrideLog)
  }
  if (r1 != "dog:42") {
    throw new Error("Expected dog:42, got: " + r1)
  }

  overrideLog = ""
  let r2: string = a.speak("hi")
  if (overrideLog != "dog-str") {
    throw new Error("Expected dog-str dispatch, got: " + overrideLog)
  }
  if (r2 != "dog:hi") {
    throw new Error("Expected dog:hi, got: " + r2)
  }

  console.log("Override overload dispatch verified")
}
