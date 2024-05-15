.class final Ljava/util/ImmutableCollections$Set0;
.super Ljava/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Set0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Ljava/util/ImmutableCollections$Set0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ImmutableCollections$Set0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 465
    new-instance v0, Ljava/util/ImmutableCollections$Set0;

    invoke-direct {v0}, Ljava/util/ImmutableCollections$Set0;-><init>()V

    sput-object v0, Ljava/util/ImmutableCollections$Set0;->INSTANCE:Ljava/util/ImmutableCollections$Set0;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 472
    .local p0, "this":Ljava/util/ImmutableCollections$Set0;, "Ljava/util/ImmutableCollections$Set0<TE;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    return-void
.end method

.method static blacklist instance()Ljava/util/ImmutableCollections$Set0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ImmutableCollections$Set0<",
            "TT;>;"
        }
    .end annotation

    .line 469
    sget-object v0, Ljava/util/ImmutableCollections$Set0;->INSTANCE:Ljava/util/ImmutableCollections$Set0;

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 496
    .local p0, "this":Ljava/util/ImmutableCollections$Set0;, "Ljava/util/ImmutableCollections$Set0<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 4

    .line 500
    .local p0, "this":Ljava/util/ImmutableCollections$Set0;, "Ljava/util/ImmutableCollections$Set0<TE;>;"
    new-instance v0, Ljava/util/CollSer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 481
    .local p0, "this":Ljava/util/ImmutableCollections$Set0;, "Ljava/util/ImmutableCollections$Set0<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 487
    .local p0, "this":Ljava/util/ImmutableCollections$Set0;, "Ljava/util/ImmutableCollections$Set0<TE;>;"
    .local p1, "o":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 505
    .local p0, "this":Ljava/util/ImmutableCollections$Set0;, "Ljava/util/ImmutableCollections$Set0<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 492
    .local p0, "this":Ljava/util/ImmutableCollections$Set0;, "Ljava/util/ImmutableCollections$Set0<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 476
    .local p0, "this":Ljava/util/ImmutableCollections$Set0;, "Ljava/util/ImmutableCollections$Set0<TE;>;"
    const/4 v0, 0x0

    return v0
.end method
