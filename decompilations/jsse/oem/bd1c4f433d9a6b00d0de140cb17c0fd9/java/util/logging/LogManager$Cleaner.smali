.class Ljava/util/logging/LogManager$Cleaner;
.super Ljava/lang/Thread;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cleaner"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method private constructor <init>(Ljava/util/logging/LogManager;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .prologue
    .line 208
    iput-object p1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager$Cleaner;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$Cleaner;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "-this1"    # Ljava/util/logging/LogManager$Cleaner;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$Cleaner;-><init>(Ljava/util/logging/LogManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 219
    invoke-static {}, Ljava/util/logging/LogManager;->-get4()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 223
    .local v0, "mgr":Ljava/util/logging/LogManager;
    iget-object v2, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    monitor-enter v2

    .line 225
    :try_start_7
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/util/logging/LogManager;->-set0(Ljava/util/logging/LogManager;Z)Z

    .line 226
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/util/logging/LogManager;->-set1(Ljava/util/logging/LogManager;Z)Z
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1a

    monitor-exit v2

    .line 230
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    invoke-virtual {v1}, Ljava/util/logging/LogManager;->reset()V

    .line 231
    return-void

    .line 223
    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method
