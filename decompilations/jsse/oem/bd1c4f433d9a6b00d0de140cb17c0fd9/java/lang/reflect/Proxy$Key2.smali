.class final Ljava/lang/reflect/Proxy$Key2;
.super Ljava/lang/ref/WeakReference;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final ref2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "intf1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "intf2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p1}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/Class;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/reflect/Proxy$Key2;->hash:I

    .line 469
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/lang/reflect/Proxy$Key2;->ref2:Ljava/lang/ref/WeakReference;

    .line 470
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 480
    if-eq p0, p1, :cond_35

    .line 481
    if-eqz p1, :cond_38

    .line 482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Ljava/lang/reflect/Proxy$Key2;

    if-ne v2, v5, :cond_38

    .line 483
    invoke-virtual {p0}, Ljava/lang/reflect/Proxy$Key2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .local v0, "intf1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_38

    move-object v2, p1

    .line 484
    check-cast v2, Ljava/lang/reflect/Proxy$Key2;

    invoke-virtual {v2}, Ljava/lang/reflect/Proxy$Key2;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_38

    .line 485
    iget-object v2, p0, Ljava/lang/reflect/Proxy$Key2;->ref2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .local v1, "intf2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_38

    .line 486
    check-cast p1, Ljava/lang/reflect/Proxy$Key2;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Ljava/lang/reflect/Proxy$Key2;->ref2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_36

    move v2, v3

    :goto_34
    move v3, v2

    .line 480
    .end local v0    # "intf1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "intf2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    :goto_35
    return v3

    .restart local v0    # "intf1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "intf2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_36
    move v2, v4

    .line 486
    goto :goto_34

    .end local v0    # "intf1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "intf2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_38
    move v3, v4

    .line 481
    goto :goto_35
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 474
    iget v0, p0, Ljava/lang/reflect/Proxy$Key2;->hash:I

    return v0
.end method
