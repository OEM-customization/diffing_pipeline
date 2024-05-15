.class public Ljava/security/spec/InvalidParameterSpecException;
.super Ljava/security/GeneralSecurityException;
.source "InvalidParameterSpecException.java"


# static fields
.field private static final serialVersionUID:J = -0xd77cc344539982eL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method
