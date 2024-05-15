.class final Ljava/lang/reflect/Proxy$KeyFactory;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/ClassLoader;",
        "[",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/reflect/Proxy$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/reflect/Proxy$1;

    .line 558
    invoke-direct {p0}, Ljava/lang/reflect/Proxy$KeyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 563
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p2

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    .line 567
    new-instance v0, Ljava/lang/reflect/Proxy$KeyX;

    invoke-direct {v0, p2}, Ljava/lang/reflect/Proxy$KeyX;-><init>([Ljava/lang/Class;)V

    return-object v0

    .line 565
    :cond_10
    new-instance v0, Ljava/lang/reflect/Proxy$Key2;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    invoke-direct {v0, v1, v2}, Ljava/lang/reflect/Proxy$Key2;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 564
    :cond_1a
    new-instance v0, Ljava/lang/reflect/Proxy$Key1;

    aget-object v1, p2, v1

    invoke-direct {v0, v1}, Ljava/lang/reflect/Proxy$Key1;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 566
    :cond_22
    # getter for: Ljava/lang/reflect/Proxy;->key0:Ljava/lang/Object;
    invoke-static {}, Ljava/lang/reflect/Proxy;->access$200()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 558
    check-cast p1, Ljava/lang/ClassLoader;

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Proxy$KeyFactory;->apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
