.class public Ljava/security/KeyManagementException;
.super Ljava/security/KeyException;
.source "KeyManagementException.java"


# static fields
.field private static final serialVersionUID:J = 0xd26d0adb8d6a627L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/security/KeyException;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/security/KeyException;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/security/KeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Ljava/security/KeyException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method
