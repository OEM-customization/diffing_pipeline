.class public final Lcom/android/org/conscrypt/metrics/ConscryptStatsLog;
.super Ljava/lang/Object;
.source "ConscryptStatsLog.java"


# static fields
.field public static final blacklist TLS_HANDSHAKE_REPORTED:I = 0x13d


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist write(IZIII)V
    .registers 6
    .param p0, "code"    # I
    .param p1, "success"    # Z
    .param p2, "protocol"    # I
    .param p3, "cipherSuite"    # I
    .param p4, "duration"    # I

    .line 42
    nop

    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->buildEvent(IZIII)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;

    move-result-object v0

    .line 45
    .local v0, "event":Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
    invoke-static {v0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsLog;->write(Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;)V

    .line 46
    return-void
.end method
