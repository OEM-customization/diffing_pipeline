.class public abstract Lsun/misc/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private oa:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 38
    .local p0, "this":Lsun/misc/LRUCache;, "Lsun/misc/LRUCache<TN;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    .line 39
    iput p1, p0, Lsun/misc/LRUCache;->size:I

    .line 40
    return-void
.end method

.method public static moveToFront([Ljava/lang/Object;I)V
    .registers 6
    .param p0, "oa"    # [Ljava/lang/Object;
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 47
    aget-object v1, p0, p1

    .line 48
    .local v1, "ob":Ljava/lang/Object;
    move v0, p1

    .local v0, "j":I
    :goto_4
    if-lez v0, :cond_f

    .line 49
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    .line 48
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 50
    :cond_f
    aput-object v1, p0, v3

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation
.end method

.method public forName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lsun/misc/LRUCache;, "Lsun/misc/LRUCache<TN;TV;>;"
    .local p1, "name":Ljava/lang/Object;, "TN;"
    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    if-nez v3, :cond_22

    .line 56
    iget v3, p0, Lsun/misc/LRUCache;->size:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 57
    .local v2, "temp":[Ljava/lang/Object;, "[TV;"
    iput-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    .line 72
    .end local v2    # "temp":[Ljava/lang/Object;, "[TV;"
    :cond_a
    invoke-virtual {p0, p1}, Lsun/misc/LRUCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "ob":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    iget-object v4, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aput-object v1, v3, v4

    .line 74
    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    iget-object v4, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    .line 75
    return-object v1

    .line 59
    .end local v1    # "ob":Ljava/lang/Object;, "TV;"
    :cond_22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 60
    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 61
    .restart local v1    # "ob":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_31

    .line 59
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 63
    :cond_31
    invoke-virtual {p0, v1, p1}, Lsun/misc/LRUCache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 64
    if-lez v0, :cond_3e

    .line 65
    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    invoke-static {v3, v0}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    .line 66
    :cond_3e
    return-object v1
.end method

.method protected abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TN;)Z"
        }
    .end annotation
.end method
