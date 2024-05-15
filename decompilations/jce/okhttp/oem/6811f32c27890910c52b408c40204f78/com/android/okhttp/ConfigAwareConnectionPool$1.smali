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
.field final synthetic this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method constructor <init>(Lcom/android/okhttp/ConfigAwareConnectionPool;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/ConfigAwareConnectionPool;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    .line 82
    invoke-direct {p0}, Llibcore/net/event/NetworkEventListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onNetworkConfigurationChanged()V
    .registers 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    monitor-enter v1

    .line 89
    :try_start_3
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/okhttp/ConfigAwareConnectionPool;->-set0(Lcom/android/okhttp/ConfigAwareConnectionPool;Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/ConnectionPool;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 91
    return-void

    .line 85
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
