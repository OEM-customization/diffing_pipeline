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
        "Ljava/util/function/BiFunction",
        "<",
        "Ljava/lang/ClassLoader;",
        "[",
        "Ljava/lang/Class",
        "<*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Proxy$KeyFactory;)V
    .registers 2
    .param p1, "-this0"    # Ljava/lang/reflect/Proxy$KeyFactory;

    .prologue
    invoke-direct {p0}, Ljava/lang/reflect/Proxy$KeyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 544
    array-length v0, p2

    packed-switch v0, :pswitch_data_24

    .line 548
    new-instance v0, Ljava/lang/reflect/Proxy$KeyX;

    invoke-direct {v0, p2}, Ljava/lang/reflect/Proxy$KeyX;-><init>([Ljava/lang/Class;)V

    return-object v0

    .line 545
    :pswitch_b
    new-instance v0, Ljava/lang/reflect/Proxy$Key1;

    aget-object v1, p2, v1

    invoke-direct {v0, v1}, Ljava/lang/reflect/Proxy$Key1;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 546
    :pswitch_13
    new-instance v0, Ljava/lang/reflect/Proxy$Key2;

    aget-object v1, p2, v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-direct {v0, v1, v2}, Ljava/lang/reflect/Proxy$Key2;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 547
    :pswitch_1e
    invoke-static {}, Ljava/lang/reflect/Proxy;->-get1()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 544
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 542
    check-cast p1, Ljava/lang/ClassLoader;

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Proxy$KeyFactory;->apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
