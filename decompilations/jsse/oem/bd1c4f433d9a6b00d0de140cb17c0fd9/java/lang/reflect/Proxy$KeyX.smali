.class final Ljava/lang/reflect/Proxy$KeyX;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyX"
.end annotation


# instance fields
.field private final hash:I

.field private final refs:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Ljava/lang/reflect/Proxy$KeyX;->hash:I

    .line 501
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_20

    .line 503
    iget-object v1, p0, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 505
    :cond_20
    return-void
.end method

.method private static equals([Ljava/lang/ref/WeakReference;[Ljava/lang/ref/WeakReference;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "refs1":[Ljava/lang/ref/WeakReference;, "[Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    .local p1, "refs2":[Ljava/lang/ref/WeakReference;, "[Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    const/4 v4, 0x0

    .line 522
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_6

    .line 523
    return v4

    .line 525
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_20

    .line 526
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 527
    .local v1, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1c

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1d

    .line 528
    :cond_1c
    return v4

    .line 525
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 531
    .end local v1    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_20
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 514
    if-eq p0, p1, :cond_17

    .line 515
    if-eqz p1, :cond_19

    .line 516
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Proxy$KeyX;

    if-ne v0, v1, :cond_19

    .line 517
    iget-object v0, p0, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    check-cast p1, Ljava/lang/reflect/Proxy$KeyX;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Ljava/lang/reflect/Proxy$KeyX;->equals([Ljava/lang/ref/WeakReference;[Ljava/lang/ref/WeakReference;)Z

    move-result v0

    .line 514
    :goto_16
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_17
    const/4 v0, 0x1

    goto :goto_16

    .line 515
    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 509
    iget v0, p0, Ljava/lang/reflect/Proxy$KeyX;->hash:I

    return v0
.end method
