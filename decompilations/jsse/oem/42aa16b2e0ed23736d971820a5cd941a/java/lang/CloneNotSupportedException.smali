.class public Ljava/lang/CloneNotSupportedException;
.super Ljava/lang/Exception;
.source "CloneNotSupportedException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x481a29f4778b29fbL


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 54
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method
