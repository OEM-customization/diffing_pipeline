.class public final Lsun/security/jca/JCAUtil;
.super Ljava/lang/Object;
.source "JCAUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/jca/JCAUtil$CachedSecureRandomHolder;
    }
.end annotation


# static fields
.field private static final blacklist ARRAY_SIZE:I = 0x1000


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static greylist-max-r getSecureRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 69
    sget-object v0, Lsun/security/jca/JCAUtil$CachedSecureRandomHolder;->instance:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static blacklist getTempArraySize(I)I
    .registers 2
    .param p0, "totalSize"    # I

    .line 54
    const/16 v0, 0x1000

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
