.class public Ljava/security/cert/CRLException;
.super Ljava/security/GeneralSecurityException;
.source "CRLException.java"


# static fields
.field private static final serialVersionUID:J = -0x5ce874812442b59bL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method