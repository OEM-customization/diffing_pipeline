.class public Ljava/lang/NegativeArraySizeException;
.super Ljava/lang/RuntimeException;
.source "NegativeArraySizeException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x7c58bbe6cc3c8375L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
