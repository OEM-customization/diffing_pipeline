.class public Ljava/lang/VerifyError;
.super Ljava/lang/LinkageError;
.source "VerifyError.java"


# static fields
.field private static final serialVersionUID:J = 0x612bf7b3861810e1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
