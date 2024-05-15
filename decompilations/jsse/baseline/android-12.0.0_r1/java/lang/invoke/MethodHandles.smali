.class public Ljava/lang/invoke/MethodHandles;
.super Ljava/lang/Object;
.source "MethodHandles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandles$Lookup;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;
    .registers 2
    .param p0, "x0"    # Ljava/lang/invoke/MethodHandle;

    .line 53
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o arrayElementGetter([BI)B
    .registers 3
    .param p0, "array"    # [B
    .param p1, "i"    # I

    .line 2046
    aget-byte v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([CI)C
    .registers 3
    .param p0, "array"    # [C
    .param p1, "i"    # I

    .line 2048
    aget-char v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([DI)D
    .registers 4
    .param p0, "array"    # [D
    .param p1, "i"    # I

    .line 2053
    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public static greylist-max-o arrayElementGetter([FI)F
    .registers 3
    .param p0, "array"    # [F
    .param p1, "i"    # I

    .line 2052
    aget v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([II)I
    .registers 3
    .param p0, "array"    # [I
    .param p1, "i"    # I

    .line 2050
    aget v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([JI)J
    .registers 4
    .param p0, "array"    # [J
    .param p1, "i"    # I

    .line 2051
    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public static whitelist test-api arrayElementGetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2031
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2032
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2033
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2035
    :try_start_d
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/lang/invoke/MethodHandles;

    const-string v3, "arrayElementGetter"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 2037
    invoke-static {v0, p0, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 2035
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_23} :catch_24

    return-object v1

    .line 2038
    :catch_24
    move-exception v1

    .line 2039
    .local v1, "exception":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2043
    .end local v1    # "exception":Ljava/lang/ReflectiveOperationException;
    :cond_2b
    new-instance v1, Ljava/lang/invoke/Transformers$ReferenceArrayElementGetter;

    invoke-direct {v1, p0}, Ljava/lang/invoke/Transformers$ReferenceArrayElementGetter;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static greylist-max-o arrayElementGetter([SI)S
    .registers 3
    .param p0, "array"    # [S
    .param p1, "i"    # I

    .line 2049
    aget-short v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([ZI)Z
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "i"    # I

    .line 2047
    aget-boolean v0, p0, p1

    return v0
.end method

.method public static whitelist test-api arrayElementSetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2067
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2068
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2069
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2071
    :try_start_d
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/lang/invoke/MethodHandles;

    const-string v3, "arrayElementSetter"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 2073
    invoke-static {v4, p0, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 2071
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_28} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_28} :catch_29

    return-object v1

    .line 2074
    :catch_29
    move-exception v1

    .line 2075
    .local v1, "exception":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2079
    .end local v1    # "exception":Ljava/lang/ReflectiveOperationException;
    :cond_30
    new-instance v1, Ljava/lang/invoke/Transformers$ReferenceArrayElementSetter;

    invoke-direct {v1, p0}, Ljava/lang/invoke/Transformers$ReferenceArrayElementSetter;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static greylist-max-o arrayElementSetter([BIB)V
    .registers 3
    .param p0, "array"    # [B
    .param p1, "i"    # I
    .param p2, "val"    # B

    .line 2083
    aput-byte p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([CIC)V
    .registers 3
    .param p0, "array"    # [C
    .param p1, "i"    # I
    .param p2, "val"    # C

    .line 2087
    aput-char p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([DID)V
    .registers 4
    .param p0, "array"    # [D
    .param p1, "i"    # I
    .param p2, "val"    # D

    .line 2097
    aput-wide p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([FIF)V
    .registers 3
    .param p0, "array"    # [F
    .param p1, "i"    # I
    .param p2, "val"    # F

    .line 2095
    aput p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([III)V
    .registers 3
    .param p0, "array"    # [I
    .param p1, "i"    # I
    .param p2, "val"    # I

    .line 2091
    aput p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([JIJ)V
    .registers 4
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "val"    # J

    .line 2093
    aput-wide p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([SIS)V
    .registers 3
    .param p0, "array"    # [S
    .param p1, "i"    # I
    .param p2, "val"    # S

    .line 2089
    aput-short p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([ZIZ)V
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "i"    # I
    .param p2, "val"    # Z

    .line 2085
    aput-boolean p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementVarHandle(Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2155
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2156
    invoke-static {p0}, Ljava/lang/invoke/ArrayElementVarHandle;->create(Ljava/lang/Class;)Ljava/lang/invoke/ArrayElementVarHandle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o byteArrayViewVarHandle(Ljava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/invoke/VarHandle;
    .registers 3
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/nio/ByteOrder;",
            ")",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2239
    .local p0, "viewArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2240
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->checkTypeIsViewable(Ljava/lang/Class;)V

    .line 2241
    invoke-static {p0, p1}, Ljava/lang/invoke/ByteArrayViewVarHandle;->create(Ljava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/invoke/ByteArrayViewVarHandle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o byteBufferViewVarHandle(Ljava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/invoke/VarHandle;
    .registers 3
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/nio/ByteOrder;",
            ")",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2328
    .local p0, "viewArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2329
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->checkTypeIsViewable(Ljava/lang/Class;)V

    .line 2330
    invoke-static {p0, p1}, Ljava/lang/invoke/ByteBufferViewVarHandle;->create(Ljava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/invoke/ByteBufferViewVarHandle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api catchException(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 10
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "handler"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/invoke/MethodHandle;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3483
    .local p1, "exType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3484
    .local v0, "ttype":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 3485
    .local v1, "htype":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_63

    .line 3486
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 3488
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_5c

    .line 3490
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v4

    .line 3491
    .local v4, "targs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v5

    .line 3492
    .local v5, "hargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 3493
    .end local v5    # "hargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .local v3, "hargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 3494
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "hpc":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 3495
    .local v6, "tpc":I
    if-ge v5, v6, :cond_4f

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_56

    .line 3496
    :cond_4f
    const-string v2, "target and handler types"

    invoke-static {v2, v0, v1}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3499
    .end local v5    # "hpc":I
    .end local v6    # "tpc":I
    :cond_56
    :goto_56
    new-instance v2, Ljava/lang/invoke/Transformers$CatchException;

    invoke-direct {v2, p0, p2, p1}, Ljava/lang/invoke/Transformers$CatchException;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;)V

    return-object v2

    .line 3489
    .end local v3    # "hargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v4    # "targs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_5c
    const-string v2, "target and handler return types"

    invoke-static {v2, v0, v1}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3487
    :cond_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler does not accept exception type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static greylist-max-o checkClassIsArray(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2001
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2004
    return-void

    .line 2002
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkTypeIsViewable(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2007
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_30

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_30

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_30

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_30

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_30

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    goto :goto_30

    .line 2015
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2013
    :cond_30
    :goto_30
    return-void
.end method

.method public static whitelist test-api collectArguments(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;

    .line 3180
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->collectArgumentsChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3181
    .local v0, "newType":Ljava/lang/invoke/MethodType;
    new-instance v1, Ljava/lang/invoke/Transformers$CollectArguments;

    invoke-direct {v1, p0, p2, p1, v0}, Ljava/lang/invoke/Transformers$CollectArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodType;)V

    return-object v1
.end method

.method private static greylist-max-o collectArgumentsChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 3185
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3186
    .local v0, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 3187
    .local v1, "filterType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    .line 3188
    .local v2, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v3

    .line 3189
    .local v3, "filterArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_19

    .line 3190
    invoke-virtual {v0, p1, v3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    .line 3192
    :cond_19
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    if-ne v2, v4, :cond_2a

    .line 3195
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, p1, v4}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    .line 3193
    :cond_2a
    const-string v4, "target and filter types do not match"

    invoke-static {v4, v0, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static whitelist test-api constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 2732
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2733
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_13

    .line 2735
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 2736
    .local v0, "w":Lsun/invoke/util/Wrapper;
    invoke-virtual {v0, p1, p0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1a

    .line 2734
    .end local v0    # "w":Lsun/invoke/util/Wrapper;
    :cond_13
    const-string v0, "void type"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2739
    :cond_1a
    :goto_1a
    new-instance v0, Ljava/lang/invoke/Transformers$Constant;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$Constant;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static greylist-max-o copyTypes(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 2913
    .local p0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2914
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    const-class v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o dropArgumentChecks(Ljava/lang/invoke/MethodType;ILjava/util/List;)I
    .registers 10
    .param p0, "oldType"    # Ljava/lang/invoke/MethodType;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodType;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)I"
        }
    .end annotation

    .line 2918
    .local p2, "valueTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2919
    .local v0, "dropped":I
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 2920
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 2921
    .local v1, "outargs":I
    add-int v2, v1, v0

    .line 2922
    .local v2, "inargs":I
    if-ltz p1, :cond_12

    if-gt p1, v1, :cond_12

    .line 2926
    return v0

    .line 2923
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no argument type to remove"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    .line 2924
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2923
    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist test-api dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 2900
    .local p2, "valueTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->copyTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 2901
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2902
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-static {v0, p1, p2}, Ljava/lang/invoke/MethodHandles;->dropArgumentChecks(Ljava/lang/invoke/MethodType;ILjava/util/List;)I

    move-result v1

    .line 2904
    .local v1, "dropped":I
    invoke-virtual {v0, p1, p2}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 2905
    .local v2, "newType":Ljava/lang/invoke/MethodType;
    if-nez v1, :cond_13

    .line 2906
    return-object p0

    .line 2909
    :cond_13
    new-instance v3, Ljava/lang/invoke/Transformers$DropArguments;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v2, p0, p1, v4}, Ljava/lang/invoke/Transformers$DropArguments;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;II)V

    return-object v3
.end method

.method public static varargs whitelist test-api dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 2978
    .local p2, "valueTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "type"    # Ljava/lang/invoke/MethodType;

    .line 2430
    new-instance v0, Ljava/lang/invoke/Transformers$Invoker;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/lang/invoke/Transformers$Invoker;-><init>(Ljava/lang/invoke/MethodType;Z)V

    return-object v0
.end method

.method public static whitelist test-api explicitCastArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 2595
    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandles;->explicitCastArgumentsChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    .line 2597
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2598
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    if-ne v0, p1, :cond_a

    return-object p0

    .line 2599
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/invoke/MethodType;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2600
    const-class v1, Ljava/lang/invoke/Transformers$Transformer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2605
    new-instance v1, Ljava/lang/invoke/Transformers$ExplicitCastArguments;

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    return-object v1

    .line 2608
    :cond_26
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 2611
    :cond_2f
    new-instance v1, Ljava/lang/invoke/Transformers$ExplicitCastArguments;

    invoke-direct {v1, p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    return-object v1
.end method

.method private static greylist-max-o explicitCastArgumentsChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 2615
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 2619
    return-void

    .line 2616
    :cond_f
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot explicitly cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o filterArgumentChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 3065
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3066
    .local v0, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 3067
    .local v1, "filterType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 3068
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1a

    .line 3070
    return-void

    .line 3069
    :cond_1a
    const-string v2, "target and filter types do not match"

    invoke-static {v2, v0, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static varargs whitelist test-api filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .line 3048
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->filterArgumentsCheckArity(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V

    .line 3050
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_11

    .line 3051
    add-int v1, v0, p1

    aget-object v2, p2, v0

    invoke-static {p0, v1, v2}, Ljava/lang/invoke/MethodHandles;->filterArgumentChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V

    .line 3050
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3054
    .end local v0    # "i":I
    :cond_11
    new-instance v0, Ljava/lang/invoke/Transformers$FilterArguments;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/invoke/Transformers$FilterArguments;-><init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V

    return-object v0
.end method

.method private static greylist-max-o filterArgumentsCheckArity(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .line 3058
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3059
    .local v0, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 3060
    .local v1, "maxPos":I
    array-length v2, p2

    add-int/2addr v2, p1

    if-gt v2, v1, :cond_d

    .line 3062
    return-void

    .line 3061
    :cond_d
    const-string v2, "too many filters"

    invoke-static {v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist test-api filterReturnValue(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "filter"    # Ljava/lang/invoke/MethodHandle;

    .line 3257
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3258
    .local v0, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 3259
    .local v1, "filterType":Ljava/lang/invoke/MethodType;
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->filterReturnValueChecks(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 3261
    new-instance v2, Ljava/lang/invoke/Transformers$FilterReturnValue;

    invoke-direct {v2, p0, p1}, Ljava/lang/invoke/Transformers$FilterReturnValue;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v2
.end method

.method private static greylist-max-o filterReturnValueChecks(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p0, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p1, "filterType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 3265
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    .line 3266
    .local v0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 3267
    .local v1, "filterValues":I
    if-nez v1, :cond_f

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1a

    goto :goto_19

    :cond_f
    const/4 v2, 0x0

    .line 3269
    invoke-virtual {p1, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_1a

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 3271
    :goto_19
    return-void

    .line 3270
    :cond_1a
    const-string v2, "target and filter types do not match"

    invoke-static {v2, p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static greylist-max-o foldArgumentChecks(ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/Class;
    .registers 12
    .param p0, "foldPos"    # I
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p2, "combinerType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 3360
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 3361
    .local v0, "foldArgs":I
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 3362
    .local v1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_10

    move v2, v4

    goto :goto_11

    :cond_10
    move v2, v3

    .line 3363
    .local v2, "foldVals":I
    :goto_11
    add-int v5, p0, v2

    .line 3364
    .local v5, "afterInsertPos":I
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v6

    add-int v7, v5, v0

    if-lt v6, v7, :cond_1c

    goto :goto_1d

    :cond_1c
    move v3, v4

    .line 3365
    .local v3, "ok":Z
    :goto_1d
    if-eqz v3, :cond_34

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v6

    .line 3366
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v7

    add-int v8, v5, v0

    invoke-interface {v7, v5, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 3368
    const/4 v3, 0x0

    .line 3369
    :cond_34
    if-eqz v3, :cond_43

    if-eqz v2, :cond_43

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v4}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    if-eq v6, v4, :cond_43

    .line 3370
    const/4 v3, 0x0

    .line 3371
    :cond_43
    if-eqz v3, :cond_46

    .line 3373
    return-object v1

    .line 3372
    :cond_46
    const-string v4, "target and combiner types"

    invoke-static {v4, p1, p2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static whitelist test-api foldArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .line 3351
    const/4 v0, 0x0

    .line 3352
    .local v0, "foldPos":I
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 3353
    .local v1, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 3354
    .local v2, "combinerType":Ljava/lang/invoke/MethodType;
    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodHandles;->foldArgumentChecks(ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/Class;

    move-result-object v3

    .line 3356
    .local v3, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/invoke/Transformers$FoldArguments;

    invoke-direct {v4, p0, p1}, Ljava/lang/invoke/Transformers$FoldArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v4
.end method

.method private static greylist-max-o getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;
    .registers 4
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 1982
    instance-of v0, p0, Ljava/lang/invoke/Transformers$Construct;

    if-eqz v0, :cond_b

    .line 1983
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/Transformers$Construct;

    invoke-virtual {v0}, Ljava/lang/invoke/Transformers$Construct;->getConstructorHandle()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 1988
    :cond_b
    instance-of v0, p0, Ljava/lang/invoke/Transformers$VarargsCollector;

    if-eqz v0, :cond_13

    .line 1989
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 1992
    :cond_13
    instance-of v0, p0, Ljava/lang/invoke/MethodHandleImpl;

    if-eqz v0, :cond_1b

    .line 1993
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/MethodHandleImpl;

    return-object v0

    .line 1996
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a direct handle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 11
    .param p0, "test"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "fallback"    # Ljava/lang/invoke/MethodHandle;

    .line 3412
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3413
    .local v0, "gtype":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 3414
    .local v1, "ttype":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 3415
    .local v2, "ftype":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 3417
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_57

    .line 3419
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v3

    .line 3420
    .local v3, "targs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v4

    .line 3421
    .local v4, "gargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 3422
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "gpc":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 3423
    .local v6, "tpc":I
    if-ge v5, v6, :cond_4a

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 3425
    invoke-interface {v3, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {p0, v5, v7}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 3426
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    goto :goto_51

    .line 3424
    :cond_4a
    const-string v7, "target and test types"

    invoke-static {v7, v1, v0}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 3429
    .end local v5    # "gpc":I
    .end local v6    # "tpc":I
    :cond_51
    :goto_51
    new-instance v5, Ljava/lang/invoke/Transformers$GuardWithTest;

    invoke-direct {v5, p0, p1, p2}, Ljava/lang/invoke/Transformers$GuardWithTest;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v5

    .line 3418
    .end local v3    # "targs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v4    # "gargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "guard type is not a predicate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 3416
    :cond_6d
    const-string v3, "target and fallback types"

    invoke-static {v3, v1, v2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static greylist-max-o identity(B)B
    .registers 1
    .param p0, "val"    # B

    .line 2767
    return p0
.end method

.method public static greylist-max-o identity(C)C
    .registers 1
    .param p0, "val"    # C

    .line 2769
    return p0
.end method

.method public static greylist-max-o identity(D)D
    .registers 2
    .param p0, "val"    # D

    .line 2774
    return-wide p0
.end method

.method public static greylist-max-o identity(F)F
    .registers 1
    .param p0, "val"    # F

    .line 2773
    return p0
.end method

.method public static greylist-max-o identity(I)I
    .registers 1
    .param p0, "val"    # I

    .line 2771
    return p0
.end method

.method public static greylist-max-o identity(J)J
    .registers 2
    .param p0, "val"    # J

    .line 2772
    return-wide p0
.end method

.method public static whitelist test-api identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 2751
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_24

    .line 2755
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2757
    :try_start_8
    sget-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v1, Ljava/lang/invoke/MethodHandles;

    const-string v2, "identity"

    .line 2758
    invoke-static {p0, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 2757
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_16} :catch_17

    return-object v0

    .line 2759
    :catch_17
    move-exception v0

    .line 2760
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2764
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1e
    new-instance v0, Ljava/lang/invoke/Transformers$ReferenceIdentity;

    invoke-direct {v0, p0}, Ljava/lang/invoke/Transformers$ReferenceIdentity;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 2752
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o identity(S)S
    .registers 1
    .param p0, "val"    # S

    .line 2770
    return p0
.end method

.method public static greylist-max-o identity(Z)Z
    .registers 1
    .param p0, "val"    # Z

    .line 2768
    return p0
.end method

.method public static varargs whitelist test-api insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "values"    # [Ljava/lang/Object;

    .line 2808
    array-length v0, p2

    .line 2809
    .local v0, "insCount":I
    invoke-static {p0, v0, p1}, Ljava/lang/invoke/MethodHandles;->insertArgumentsChecks(Ljava/lang/invoke/MethodHandle;II)[Ljava/lang/Class;

    move-result-object v1

    .line 2810
    .local v1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_8

    .line 2811
    return-object p0

    .line 2816
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_2e

    .line 2817
    add-int v3, p1, v2

    aget-object v3, v1, v3

    .line 2818
    .local v3, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 2819
    add-int v4, p1, v2

    aget-object v4, v1, v4

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 2822
    :cond_1f
    invoke-static {v3}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-virtual {v4, v5, v3}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v2

    .line 2816
    .end local v3    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2826
    .end local v2    # "i":I
    :cond_2e
    new-instance v2, Ljava/lang/invoke/Transformers$InsertArguments;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/invoke/Transformers$InsertArguments;-><init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)V

    return-object v2
.end method

.method private static greylist-max-o insertArgumentsChecks(Ljava/lang/invoke/MethodHandle;II)[Ljava/lang/Class;
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "insCount"    # I
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "II)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 2846
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2847
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 2848
    .local v1, "outargs":I
    sub-int v2, v1, p1

    .line 2849
    .local v2, "inargs":I
    if-ltz v2, :cond_1c

    .line 2851
    if-ltz p2, :cond_15

    if-gt p2, v2, :cond_15

    .line 2853
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    return-object v3

    .line 2852
    :cond_15
    const-string v3, "no argument type to append"

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2850
    :cond_1c
    const-string v3, "too many values to insert"

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist test-api invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "type"    # Ljava/lang/invoke/MethodType;

    .line 2469
    new-instance v0, Ljava/lang/invoke/Transformers$Invoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/lang/invoke/Transformers$Invoker;-><init>(Ljava/lang/invoke/MethodType;Z)V

    return-object v0
.end method

.method public static whitelist test-api lookup()Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 2

    .line 89
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static greylist-max-o methodHandleForVarHandleAccessor(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;Z)Ljava/lang/invoke/MethodHandle;
    .registers 10
    .param p0, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "isExactInvoker"    # Z

    .line 2476
    const-class v0, Ljava/lang/invoke/VarHandle;

    .line 2479
    .local v0, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle$AccessMode;->methodName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_12} :catch_2e

    .line 2482
    .local v1, "method":Ljava/lang/reflect/Method;
    nop

    .line 2483
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/invoke/VarHandle;

    aput-object v3, v2, v5

    invoke-virtual {p1, v5, v2}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 2484
    .local v2, "methodType":Ljava/lang/invoke/MethodType;
    if-eqz p2, :cond_22

    const/16 v3, 0x8

    goto :goto_23

    .line 2485
    :cond_22
    const/4 v3, 0x7

    :goto_23
    nop

    .line 2486
    .local v3, "kind":I
    new-instance v4, Ljava/lang/invoke/MethodHandleImpl;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v3, v2}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    return-object v4

    .line 2480
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "methodType":Ljava/lang/invoke/MethodType;
    .end local v3    # "kind":I
    :catch_2e
    move-exception v1

    .line 2481
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No method for AccessMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static greylist-max-o misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;
    .registers 5
    .param p0, "what"    # Ljava/lang/String;
    .param p1, "t1"    # Ljava/lang/invoke/MethodType;
    .param p2, "t2"    # Ljava/lang/invoke/MethodType;

    .line 3433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o permuteArgumentChecks([ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Z
    .registers 10
    .param p0, "reorder"    # [I
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;
    .param p2, "oldType"    # Ljava/lang/invoke/MethodType;

    .line 2693
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_54

    .line 2696
    array-length v0, p0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    if-ne v0, v1, :cond_3a

    .line 2697
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 2698
    .local v0, "limit":I
    const/4 v1, 0x0

    .line 2699
    .local v1, "bad":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_17
    array-length v3, p0

    if-ge v2, v3, :cond_36

    .line 2700
    aget v3, p0, v2

    .line 2701
    .local v3, "i":I
    if-ltz v3, :cond_35

    if-lt v3, v0, :cond_21

    goto :goto_35

    .line 2704
    :cond_21
    invoke-virtual {p1, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    .line 2705
    .local v4, "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v5

    .line 2706
    .local v5, "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v4, v5, :cond_2e

    .line 2699
    .end local v3    # "i":I
    .end local v4    # "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2707
    .restart local v3    # "i":I
    .restart local v4    # "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2e
    const-string v6, "parameter types do not match after reorder"

    invoke-static {v6, p2, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 2702
    .end local v4    # "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    :goto_35
    const/4 v1, 0x1

    .line 2710
    .end local v2    # "j":I
    .end local v3    # "i":I
    :cond_36
    if-nez v1, :cond_3a

    const/4 v2, 0x1

    return v2

    .line 2712
    .end local v0    # "limit":I
    .end local v1    # "bad":Z
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad reorder array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2694
    :cond_54
    const-string v0, "return types do not match"

    invoke-static {v0, p2, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static varargs whitelist test-api permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;
    .param p2, "reorder"    # [I

    .line 2682
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [I

    .line 2683
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2684
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-static {p2, p1, v0}, Ljava/lang/invoke/MethodHandles;->permuteArgumentChecks([ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Z

    .line 2686
    new-instance v1, Ljava/lang/invoke/Transformers$PermuteArguments;

    invoke-direct {v1, p1, p0, p2}, Ljava/lang/invoke/Transformers$PermuteArguments;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[I)V

    return-object v1
.end method

.method public static whitelist test-api publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 1

    .line 113
    sget-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    return-object v0
.end method

.method public static whitelist test-api reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;
    .registers 4
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/invoke/MethodHandle;",
            ")TT;"
        }
    .end annotation

    .line 140
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/lang/invoke/MethodHandles;->getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    .line 143
    .local v0, "directTarget":Ljava/lang/invoke/MethodHandleImpl;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandleImpl;->getMemberInternal()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Member;

    return-object v1
.end method

.method public static whitelist test-api spreadInvoker(Ljava/lang/invoke/MethodType;I)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "type"    # Ljava/lang/invoke/MethodType;
    .param p1, "leadingArgCount"    # I

    .line 2384
    if-ltz p1, :cond_18

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    if-gt p1, v0, :cond_18

    .line 2387
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2388
    .local v0, "invoker":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    sub-int/2addr v1, p1

    .line 2389
    .local v1, "spreadArgCount":I
    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/invoke/MethodHandle;->asSpreader(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2390
    return-object v0

    .line 2385
    .end local v0    # "invoker":Ljava/lang/invoke/MethodHandle;
    .end local v1    # "spreadArgCount":I
    :cond_18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bad argument count"

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api throwException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3516
    .local p0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "exType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3519
    new-instance v0, Ljava/lang/invoke/Transformers$AlwaysThrow;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$AlwaysThrow;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 3517
    :cond_e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o varHandleExactInvoker(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 2507
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodHandles;->methodHandleForVarHandleAccessor(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o varHandleInvoker(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 2537
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodHandles;->methodHandleForVarHandleAccessor(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method
