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
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 281
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 283
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .registers 2

    .line 288
    :goto_0
    :try_start_0
    # invokes: Lcom/android/okhttp/okio/AsyncTimeout;->awaitTimeout()Lcom/android/okhttp/okio/AsyncTimeout;
    invoke-static {}, Lcom/android/okhttp/okio/AsyncTimeout;->access$000()Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v0

    .line 291
    .local v0, "timedOut":Lcom/android/okhttp/okio/AsyncTimeout;
    if-nez v0, :cond_7

    goto :goto_0

    .line 294
    :cond_7
    invoke-virtual {v0}, Lcom/android/okhttp/okio/AsyncTimeout;->timedOut()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    .end local v0    # "timedOut":Lcom/android/okhttp/okio/AsyncTimeout;
    goto :goto_c

    .line 295
    :catch_b
    move-exception v0

    .line 296
    :goto_c
    goto :goto_0
.end method
