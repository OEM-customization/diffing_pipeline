.class public Ljava/nio/file/ProviderNotFoundException;
.super Ljava/lang/RuntimeException;
.source "ProviderNotFoundException.java"


# static fields
.field static final serialVersionUID:J = -0x1a17256abd4926a2L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
