.class final Ljava/lang/reflect/Proxy$ProxyClassFactory;
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
    name = "ProxyClassFactory"
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
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final nextUniqueNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final proxyClassNamePrefix:Ljava/lang/String; = "$Proxy"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 564
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy$ProxyClassFactory;->nextUniqueNumber:Ljava/util/concurrent/atomic/AtomicLong;

    .line 557
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Proxy$ProxyClassFactory;)V
    .registers 2
    .param p1, "-this0"    # Ljava/lang/reflect/Proxy$ProxyClassFactory;

    .prologue
    invoke-direct {p0}, Ljava/lang/reflect/Proxy$ProxyClassFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .registers 28
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v10, Ljava/util/IdentityHashMap;

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 570
    .local v10, "interfaceSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    const/16 v21, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    :goto_13
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9a

    aget-object v11, p2, v21

    .line 575
    .local v11, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 577
    .local v9, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1c
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_2b} :catch_163

    move-result-object v9

    .line 580
    .end local v9    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2c
    if-eq v9, v11, :cond_4a

    .line 581
    new-instance v21, Ljava/lang/IllegalArgumentException;

    .line 582
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is not visible from class loader"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 581
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 588
    :cond_4a
    invoke-virtual {v9}, Ljava/lang/Class;->isInterface()Z

    move-result v23

    if-nez v23, :cond_6e

    .line 589
    new-instance v21, Ljava/lang/IllegalArgumentException;

    .line 590
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is not an interface"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 589
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 595
    :cond_6e
    sget-object v23, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_96

    .line 596
    new-instance v21, Ljava/lang/IllegalArgumentException;

    .line 597
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "repeated interface: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 596
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 570
    :cond_96
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_13

    .line 601
    .end local v11    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9a
    const/16 v20, 0x0

    .line 602
    .local v20, "proxyPkg":Ljava/lang/String;
    const/16 v4, 0x11

    .line 609
    .local v4, "accessFlags":I
    const/16 v21, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    .end local v20    # "proxyPkg":Ljava/lang/String;
    :goto_a5
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_f5

    aget-object v11, p2, v21

    .line 610
    .restart local v11    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    .line 611
    .local v8, "flags":I
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v23

    if-nez v23, :cond_d2

    .line 612
    const/16 v4, 0x10

    .line 613
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 614
    .local v15, "name":Ljava/lang/String;
    const/16 v23, 0x2e

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 615
    .local v14, "n":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v14, v0, :cond_d5

    const-string/jumbo v18, ""

    .line 616
    .local v18, "pkg":Ljava/lang/String;
    :goto_ce
    if-nez v20, :cond_e2

    .line 617
    move-object/from16 v20, v18

    .line 609
    .end local v14    # "n":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_d2
    add-int/lit8 v21, v21, 0x1

    goto :goto_a5

    .line 615
    .restart local v14    # "n":I
    .restart local v15    # "name":Ljava/lang/String;
    :cond_d5
    add-int/lit8 v23, v14, 0x1

    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "pkg":Ljava/lang/String;
    goto :goto_ce

    .line 618
    :cond_e2
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_d2

    .line 619
    new-instance v21, Ljava/lang/IllegalArgumentException;

    .line 620
    const-string/jumbo v22, "non-public interfaces from different packages"

    .line 619
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 625
    .end local v8    # "flags":I
    .end local v11    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "n":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_f5
    if-nez v20, :cond_fa

    .line 627
    const-string/jumbo v20, ""

    .line 633
    :cond_fa
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Proxy;->-wrap2([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    .line 634
    .local v12, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-static {}, Ljava/lang/reflect/Proxy;->-get0()Ljava/util/Comparator;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 635
    invoke-static {v12}, Ljava/lang/reflect/Proxy;->-wrap3(Ljava/util/List;)V

    .line 636
    invoke-static {v12}, Ljava/lang/reflect/Proxy;->-wrap1(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 638
    .local v6, "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/reflect/Method;

    .line 639
    .local v13, "methodsArray":[Ljava/lang/reflect/Method;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/Class;

    .line 644
    .local v7, "exceptionsArray":[[Ljava/lang/Class;, "[[Ljava/lang/Class<*>;"
    sget-object v21, Ljava/lang/reflect/Proxy$ProxyClassFactory;->nextUniqueNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v16

    .line 645
    .local v16, "num":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "$Proxy"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 647
    .local v19, "proxyName":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v13, v7}, Ljava/lang/reflect/Proxy;->-wrap0(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v21

    return-object v21

    .line 578
    .end local v4    # "accessFlags":I
    .end local v6    # "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    .end local v7    # "exceptionsArray":[[Ljava/lang/Class;, "[[Ljava/lang/Class<*>;"
    .end local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v13    # "methodsArray":[Ljava/lang/reflect/Method;
    .end local v16    # "num":J
    .end local v19    # "proxyName":Ljava/lang/String;
    .restart local v9    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_163
    move-exception v5

    .local v5, "e":Ljava/lang/ClassNotFoundException;
    goto/16 :goto_2c
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 566
    check-cast p1, Ljava/lang/ClassLoader;

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Proxy$ProxyClassFactory;->apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
