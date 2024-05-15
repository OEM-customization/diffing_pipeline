.class public Ljava/lang/reflect/MalformedParametersException;
.super Ljava/lang/RuntimeException;
.source "MalformedParametersException.java"


# static fields
.field private static final serialVersionUID:J = 0x1332c67L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method
