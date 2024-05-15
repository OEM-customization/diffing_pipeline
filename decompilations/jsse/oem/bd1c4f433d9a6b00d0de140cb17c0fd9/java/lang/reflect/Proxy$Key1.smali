.class final Ljava/lang/reflect/Proxy$Key1;
.super Ljava/lang/ref/WeakReference;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key1"
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


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 440
    invoke-virtual {p1}, Ljava/lang/Class;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/reflect/Proxy$Key1;->hash:I

    .line 441
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 451
    if-eq p0, p1, :cond_1e

    .line 452
    if-eqz p1, :cond_21

    .line 453
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/reflect/Proxy$Key1;

    if-ne v3, v4, :cond_21

    .line 454
    invoke-virtual {p0}, Ljava/lang/reflect/Proxy$Key1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .local v0, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_21

    .line 455
    check-cast p1, Ljava/lang/reflect/Proxy$Key1;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Proxy$Key1;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1f

    .line 451
    .end local v0    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1e
    :goto_1e
    return v1

    .restart local v0    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f
    move v1, v2

    .line 455
    goto :goto_1e

    .end local v0    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_21
    move v1, v2

    .line 452
    goto :goto_1e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 445
    iget v0, p0, Ljava/lang/reflect/Proxy$Key1;->hash:I

    return v0
.end method
