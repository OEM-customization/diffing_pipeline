.class abstract Lsun/nio/cs/ThreadLocalCoders$Cache;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Cache"
.end annotation


# instance fields
.field private cache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    .line 47
    iput p1, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    .line 48
    return-void
.end method

.method private moveToFront([Ljava/lang/Object;I)V
    .registers 7
    .param p1, "oa"    # [Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 53
    aget-object v1, p1, p2

    .line 54
    .local v1, "ob":Ljava/lang/Object;
    move v0, p2

    .local v0, "j":I
    :goto_4
    if-lez v0, :cond_f

    .line 55
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v0

    .line 54
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 56
    :cond_f
    aput-object v1, p1, v3

    .line 57
    return-void
.end method


# virtual methods
.method abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method forName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 62
    iget-object v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 63
    .local v1, "oa":[Ljava/lang/Object;
    if-nez v1, :cond_23

    .line 64
    iget v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    new-array v1, v3, [Ljava/lang/Object;

    .line 65
    iget-object v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 80
    :cond_13
    invoke-virtual {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "ob":Ljava/lang/Object;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aput-object v2, v1, v3

    .line 82
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v1, v3}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    .line 83
    return-object v2

    .line 67
    .end local v2    # "ob":Ljava/lang/Object;
    :cond_23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    array-length v3, v1

    if-ge v0, v3, :cond_13

    .line 68
    aget-object v2, v1, v0

    .line 69
    .restart local v2    # "ob":Ljava/lang/Object;
    if-nez v2, :cond_2e

    .line 67
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 71
    :cond_2e
    invoke-virtual {p0, v2, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 72
    if-lez v0, :cond_39

    .line 73
    invoke-direct {p0, v1, v0}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    .line 74
    :cond_39
    return-object v2
.end method

.method abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
