// Swift 实现 — D-16.6.1: launch domain/group/ID 参数
//
// ArkTS 问题: Spec §16.6.1 要求 launch 支持 domain/group/ID 参数
//             （指定目标 worker 线程集），但实现仅接受 lambda
// Swift 等价: Task(executorPreference:) + @MainActor / CustomExecutor
//
// Swift 通过 actor 和 Task executor 参数控制任务调度目标：
//   - @MainActor  → main domain（主线程）
//   - Task(executorPreference:) → 指定自定义 executor

import Foundation

// 模拟 exclusive worker domain
actor ExclusiveWorker {
    func run() -> String {
        return "exclusive-worker"
    }
}

// 通过 @MainActor 指定 main domain
@MainActor
func onMainDomain() -> String {
    return "main-domain"
}

func domainDemo() async {
    // 在 exclusive worker 上执行（类似 ArkTS 专属 worker）
    let worker = ExclusiveWorker()
    let workerName = await worker.run()
    assert(workerName == "exclusive-worker")

    // 在 main domain 上执行（类似 ArkTS 指定 main worker）
    let mainName = await onMainDomain()
    assert(mainName == "main-domain")

    print("D-16.6.1 Domain OK")
}

@main
struct Main {
    static func main() async {
        await domainDemo()
    }
}
