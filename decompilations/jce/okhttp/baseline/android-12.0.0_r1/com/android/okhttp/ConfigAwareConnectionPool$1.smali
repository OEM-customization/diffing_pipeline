.class Lcom/android/okhttp/ConfigAwareConnectionPool$1;
.super Llibcore/net/event/NetworkEventListener;
.source "ConfigAwareConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/ConfigAwareConnectionPool;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/ConfigAwareConnectionPool;

    .line 84
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-direct {p0}, Llibcore/net/event/NetworkEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onNetworkConfigurationChanged()V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    const/4 v2, 0x0

    # setter for: Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;
    invoke-static {v1, v2}, Lcom/android/okhttp/ConfigAwareConnectionPool;->access$002(Lcom/android/okhttp/ConfigAwareConnectionPool;Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/ConnectionPool;

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
