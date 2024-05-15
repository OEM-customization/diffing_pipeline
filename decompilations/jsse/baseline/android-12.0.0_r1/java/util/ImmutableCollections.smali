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
        Ljava/util/ImmutableCollections$List12;,
        Ljava/util/ImmutableCollections$SubList;,
        Ljava/util/ImmutableCollections$ListItr;,
        Ljava/util/ImmutableCollections$AbstractImmutableList;,
        Ljava/util/ImmutableCollections$AbstractImmutableCollection;
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

.method static blacklist emptyList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 97
    sget-object v0, Ljava/util/ImmutableCollections$ListN;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method static blacklist listCopy(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 88
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p0, Ljava/util/ImmutableCollections$AbstractImmutableList;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/ImmutableCollections$SubList;

    if-eq v0, v1, :cond_10

    .line 89
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 91
    :cond_10
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static blacklist uoe()Ljava/lang/UnsupportedOperationException;
    .registers 1

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method
