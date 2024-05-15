.class public Ljava/lang/InstantiationException;
.super Ljava/lang/ReflectiveOperationException;
.source "InstantiationException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x7527c1d8b22a7a76L


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/ReflectiveOperationException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method
