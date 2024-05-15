.class public Ljava/security/NoSuchAlgorithmException;
.super Ljava/security/GeneralSecurityException;
.source "NoSuchAlgorithmException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x674e36ccc64faa42L


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 87
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method
