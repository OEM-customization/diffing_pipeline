.class final Ljava/util/ImmutableCollections$Map0;
.super Ljava/util/ImmutableCollections$AbstractImmutableMap;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Map0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Ljava/util/ImmutableCollections$Map0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ImmutableCollections$Map0<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 568
    new-instance v0, Ljava/util/ImmutableCollections$Map0;

    invoke-direct {v0}, Ljava/util/ImmutableCollections$Map0;-><init>()V

    sput-object v0, Ljava/util/ImmutableCollections$Map0;->INSTANCE:Ljava/util/ImmutableCollections$Map0;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 575
    .local p0, "this":Ljava/util/ImmutableCollections$Map0;, "Ljava/util/ImmutableCollections$Map0<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableMap;-><init>()V

    return-void
.end method

.method static blacklist instance()Ljava/util/ImmutableCollections$Map0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ImmutableCollections$Map0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 572
    sget-object v0, Ljava/util/ImmutableCollections$Map0;->INSTANCE:Ljava/util/ImmutableCollections$Map0;

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

    .line 595
    .local p0, "this":Ljava/util/ImmutableCollections$Map0;, "Ljava/util/ImmutableCollections$Map0<TK;TV;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 4

    .line 599
    .local p0, "this":Ljava/util/ImmutableCollections$Map0;, "Ljava/util/ImmutableCollections$Map0<TK;TV;>;"
    new-instance v0, Ljava/util/CollSer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 584
    .local p0, "this":Ljava/util/ImmutableCollections$Map0;, "Ljava/util/ImmutableCollections$Map0<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 590
    .local p0, "this":Ljava/util/ImmutableCollections$Map0;, "Ljava/util/ImmutableCollections$Map0<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 579
    .local p0, "this":Ljava/util/ImmutableCollections$Map0;, "Ljava/util/ImmutableCollections$Map0<TK;TV;>;"
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 604
    .local p0, "this":Ljava/util/ImmutableCollections$Map0;, "Ljava/util/ImmutableCollections$Map0<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
