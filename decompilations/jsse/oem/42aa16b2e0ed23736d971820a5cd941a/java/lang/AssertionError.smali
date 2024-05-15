.class public Ljava/lang/AssertionError;
.super Ljava/lang/Error;
.source "AssertionError.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x4592d15402bec21aL


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 50
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(C)V
    .registers 3
    .param p1, "detailMessage"    # C

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(D)V
    .registers 4
    .param p1, "detailMessage"    # D

    .line 148
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(F)V
    .registers 3
    .param p1, "detailMessage"    # F

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 3
    .param p1, "detailMessage"    # I

    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(J)V
    .registers 4
    .param p1, "detailMessage"    # J

    .line 124
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "detailMessage"    # Ljava/lang/Object;

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 75
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 76
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 77
    :cond_11
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Z)V
    .registers 3
    .param p1, "detailMessage"    # Z

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method
