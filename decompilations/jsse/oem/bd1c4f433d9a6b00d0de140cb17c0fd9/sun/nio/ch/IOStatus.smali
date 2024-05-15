.class public final Lsun/nio/ch/IOStatus;
.super Ljava/lang/Object;
.source "IOStatus.java"


# static fields
.field public static final EOF:I = -0x1

.field public static final INTERRUPTED:I = -0x3

.field public static final THROWN:I = -0x5

.field public static final UNAVAILABLE:I = -0x2

.field public static final UNSUPPORTED:I = -0x4

.field public static final UNSUPPORTED_CASE:I = -0x6


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(I)Z
    .registers 2
    .param p0, "n"    # I

    .prologue
    .line 66
    const/4 v0, -0x2

    if-lt p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static check(J)Z
    .registers 4
    .param p0, "n"    # J

    .prologue
    .line 76
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static checkAll(J)Z
    .registers 6
    .param p0, "n"    # J

    .prologue
    const/4 v0, 0x1

    .line 81
    const-wide/16 v2, -0x1

    cmp-long v1, p0, v2

    if-gtz v1, :cond_d

    const-wide/16 v2, -0x6

    cmp-long v1, p0, v2

    if-gez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static normalize(I)I
    .registers 2
    .param p0, "n"    # I

    .prologue
    .line 60
    const/4 v0, -0x2

    if-ne p0, v0, :cond_5

    .line 61
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_5
    return p0
.end method

.method public static normalize(J)J
    .registers 4
    .param p0, "n"    # J

    .prologue
    .line 70
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 71
    const-wide/16 v0, 0x0

    return-wide v0

    .line 72
    :cond_9
    return-wide p0
.end method
