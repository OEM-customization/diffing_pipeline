.class Lcom/android/okhttp/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/android/okhttp/ConnectionPool;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/32 v8, 0xf4240

    .line 94
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/android/okhttp/ConnectionPool;->cleanup(J)J

    move-result-wide v4

    .line 95
    .local v4, "waitNanos":J
    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_14

    return-void

    .line 96
    :cond_14
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 97
    div-long v2, v4, v8

    .line 98
    .local v2, "waitMillis":J
    mul-long v6, v2, v8

    sub-long/2addr v4, v6

    .line 99
    iget-object v6, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v6

    .line 101
    :try_start_22
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    long-to-int v7, v4

    invoke-virtual {v1, v2, v3, v7}, Lcom/android/okhttp/ConnectionPool;->wait(JI)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_28} :catch_2d
    .catchall {:try_start_22 .. :try_end_28} :catchall_2a

    :goto_28
    monitor-exit v6

    goto :goto_3

    .line 99
    :catchall_2a
    move-exception v1

    monitor-exit v6

    throw v1

    .line 102
    :catch_2d
    move-exception v0

    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_28
.end method
