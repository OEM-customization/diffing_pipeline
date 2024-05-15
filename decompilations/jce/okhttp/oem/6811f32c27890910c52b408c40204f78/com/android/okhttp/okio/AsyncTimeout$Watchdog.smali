.class final Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/okio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 279
    const-string/jumbo v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 281
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 286
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/okio/AsyncTimeout;->-wrap0()Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v1

    .line 289
    .local v1, "timedOut":Lcom/android/okhttp/okio/AsyncTimeout;
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Lcom/android/okhttp/okio/AsyncTimeout;->timedOut()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_0

    .line 293
    .end local v1    # "timedOut":Lcom/android/okhttp/okio/AsyncTimeout;
    :catch_a
    move-exception v0

    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
