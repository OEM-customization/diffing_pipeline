.class public Ljava/lang/IndexOutOfBoundsException;
.super Ljava/lang/RuntimeException;
.source "IndexOutOfBoundsException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x33fc59fdab42b27L


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method
