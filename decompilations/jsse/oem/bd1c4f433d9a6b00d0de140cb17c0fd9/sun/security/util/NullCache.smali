.class Lsun/security/util/NullCache;
.super Lsun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lsun/security/util/Cache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 205
    new-instance v0, Lsun/security/util/NullCache;

    invoke-direct {v0}, Lsun/security/util/NullCache;-><init>()V

    sput-object v0, Lsun/security/util/NullCache;->INSTANCE:Lsun/security/util/Cache;

    .line 203
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 207
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    .line 209
    return-void
.end method


# virtual methods
.method public accept(Lsun/security/util/Cache$CacheVisitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    .local p1, "visitor":Lsun/security/util/Cache$CacheVisitor;, "Lsun/security/util/Cache$CacheVisitor<TK;TV;>;"
    return-void
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 217
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 229
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public setCapacity(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 233
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public setTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 237
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 212
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
