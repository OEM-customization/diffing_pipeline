.class Ljava/util/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/Timer;


# direct methods
.method constructor blacklist <init>(Ljava/util/Timer;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/Timer;

    .line 117
    iput-object p1, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist core-platform-api test-api finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    # getter for: Ljava/util/Timer;->queue:Ljava/util/TaskQueue;
    invoke-static {v0}, Ljava/util/Timer;->access$000(Ljava/util/Timer;)Ljava/util/TaskQueue;

    move-result-object v0

    monitor-enter v0

    .line 120
    :try_start_7
    iget-object v1, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    # getter for: Ljava/util/Timer;->thread:Ljava/util/TimerThread;
    invoke-static {v1}, Ljava/util/Timer;->access$100(Ljava/util/Timer;)Ljava/util/TimerThread;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 121
    iget-object v1, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    # getter for: Ljava/util/Timer;->queue:Ljava/util/TaskQueue;
    invoke-static {v1}, Ljava/util/Timer;->access$000(Ljava/util/Timer;)Ljava/util/TaskQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method
