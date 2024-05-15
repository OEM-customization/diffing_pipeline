.class Ljava/util/ImmutableCollections;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ImmutableCollections$MapN;,
        Ljava/util/ImmutableCollections$Map1;,
        Ljava/util/ImmutableCollections$Map0;,
        Ljava/util/ImmutableCollections$AbstractImmutableMap;,
        Ljava/util/ImmutableCollections$SetN;,
        Ljava/util/ImmutableCollections$Set2;,
        Ljava/util/ImmutableCollections$Set1;,
        Ljava/util/ImmutableCollections$Set0;,
        Ljava/util/ImmutableCollections$AbstractImmutableSet;,
        Ljava/util/ImmutableCollections$ListN;,
        Ljava/util/ImmutableCollections$List2;,
        Ljava/util/ImmutableCollections$List1;,
        Ljava/util/ImmutableCollections$List0;,
        Ljava/util/ImmutableCollections$AbstractImmutableList;
    }
.end annotation


# static fields
.field static final blacklist EXPAND_FACTOR:I = 0x2

.field static final blacklist SALT:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 58
    .local v0, "nt":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    sput v2, Ljava/util/ImmutableCollections;->SALT:I

    .line 59
    .end local v0    # "nt":J
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist uoe()Ljava/lang/UnsupportedOperationException;
    .registers 1

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method
