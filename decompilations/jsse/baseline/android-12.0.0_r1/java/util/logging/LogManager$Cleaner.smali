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
.field final synthetic blacklist this$0:Ljava/util/logging/LogManager;


# direct methods
.method private constructor blacklist <init>(Ljava/util/logging/LogManager;)V
    .registers 2

    .line 209
    iput-object p1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 213
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$Cleaner;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 214
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/logging/LogManager;
    .param p2, "x1"    # Ljava/util/logging/LogManager$1;

    .line 207
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$Cleaner;-><init>(Ljava/util/logging/LogManager;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 220
    # getter for: Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;
    invoke-static {}, Ljava/util/logging/LogManager;->access$200()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 224
    .local v0, "mgr":Ljava/util/logging/LogManager;
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    monitor-enter v1

    .line 226
    :try_start_7
    iget-object v2, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    const/4 v3, 0x1

    # setter for: Ljava/util/logging/LogManager;->deathImminent:Z
    invoke-static {v2, v3}, Ljava/util/logging/LogManager;->access$302(Ljava/util/logging/LogManager;Z)Z

    .line 227
    iget-object v2, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    # setter for: Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    invoke-static {v2, v3}, Ljava/util/logging/LogManager;->access$402(Ljava/util/logging/LogManager;Z)Z

    .line 228
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    .line 231
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    invoke-virtual {v1}, Ljava/util/logging/LogManager;->reset()V

    .line 232
    return-void

    .line 228
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v2
.end method
