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
.field final synthetic this$0:Ljava/util/Timer;


# direct methods
.method constructor <init>(Ljava/util/Timer;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/Timer;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-static {v0}, Ljava/util/Timer;->-get0(Ljava/util/Timer;)Ljava/util/TaskQueue;

    move-result-object v1

    monitor-enter v1

    .line 113
    :try_start_7
    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-static {v0}, Ljava/util/Timer;->-get1(Ljava/util/Timer;)Ljava/util/TimerThread;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 114
    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-static {v0}, Ljava/util/Timer;->-get0(Ljava/util/Timer;)Ljava/util/TaskQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TaskQueue;->notify()V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    monitor-exit v1

    .line 116
    return-void

    .line 112
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method