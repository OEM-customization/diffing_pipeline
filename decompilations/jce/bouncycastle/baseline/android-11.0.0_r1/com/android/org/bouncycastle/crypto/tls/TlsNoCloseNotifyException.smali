.class public Lcom/android/org/bouncycastle/crypto/tls/TlsNoCloseNotifyException;
.super Ljava/io/EOFException;
.source "TlsNoCloseNotifyException.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    const-string v0, "No close_notify alert received before connection closed"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method
