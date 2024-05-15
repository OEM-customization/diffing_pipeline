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
.method static synthetic -wrap0(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;
    .registers 2
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayElementGetter([BI)B
    .registers 3
    .param p0, "array"    # [B
    .param p1, "i"    # I

    .prologue
    .line 1734
    aget-byte v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([CI)C
    .registers 3
    .param p0, "array"    # [C
    .param p1, "i"    # I

    .prologue
    .line 1736
    aget-char v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([DI)D
    .registers 4
    .param p0, "array"    # [D
    .param p1, "i"    # I

    .prologue
    .line 1741
    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public static arrayElementGetter([FI)F
    .registers 3
    .param p0, "array"    # [F
    .param p1, "i"    # I

    .prologue
    .line 1740
    aget v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([II)I
    .registers 3
    .param p0, "array"    # [I
    .param p1, "i"    # I

    .prologue
    .line 1738
    aget v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([JI)J
    .registers 4
    .param p0, "array"    # [J
    .param p1, "i"    # I

    .prologue
    .line 1739
    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public static arrayElementGetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1716
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1717
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_20

    .line 1718
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not an array type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1721
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1723
    :try_start_26
    sget-object v2, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v3, Ljava/lang/invoke/MethodHandles;

    .line 1724
    const-string/jumbo v4, "arrayElementGetter"

    .line 1725
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0, p0, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 1723
    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_26 .. :try_end_3c} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_3c} :catch_3e

    move-result-object v2

    return-object v2

    .line 1726
    :catch_3e
    move-exception v1

    .line 1727
    .local v1, "exception":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1731
    .end local v1    # "exception":Ljava/lang/ReflectiveOperationException;
    :cond_45
    new-instance v2, Ljava/lang/invoke/Transformers$ReferenceArrayElementGetter;

    invoke-direct {v2, p0}, Ljava/lang/invoke/Transformers$ReferenceArrayElementGetter;-><init>(Ljava/lang/Class;)V

    return-object v2
.end method

.method public static arrayElementGetter([SI)S
    .registers 3
    .param p0, "array"    # [S
    .param p1, "i"    # I

    .prologue
    .line 1737
    aget-short v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([ZI)Z
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "i"    # I

    .prologue
    .line 1735
    aget-boolean v0, p0, p1

    return v0
.end method

.method public static arrayElementSetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1755
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1756
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_20

    .line 1757
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not an array type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1760
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1762
    :try_start_26
    sget-object v2, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v3, Ljava/lang/invoke/MethodHandles;

    .line 1763
    const-string/jumbo v4, "arrayElementSetter"

    .line 1764
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v5, p0, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 1762
    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    :try_end_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_26 .. :try_end_41} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_41} :catch_43

    move-result-object v2

    return-object v2

    .line 1765
    :catch_43
    move-exception v1

    .line 1766
    .local v1, "exception":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1770
    .end local v1    # "exception":Ljava/lang/ReflectiveOperationException;
    :cond_4a
    new-instance v2, Ljava/lang/invoke/Transformers$ReferenceArrayElementSetter;

    invoke-direct {v2, p0}, Ljava/lang/invoke/Transformers$ReferenceArrayElementSetter;-><init>(Ljava/lang/Class;)V

    return-object v2
.end method

.method public static arrayElementSetter([BIB)V
    .registers 3
    .param p0, "array"    # [B
    .param p1, "i"    # I
    .param p2, "val"    # B

    .prologue
    .line 1774
    aput-byte p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([CIC)V
    .registers 3
    .param p0, "array"    # [C
    .param p1, "i"    # I
    .param p2, "val"    # C

    .prologue
    .line 1778
    aput-char p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([DID)V
    .registers 4
    .param p0, "array"    # [D
    .param p1, "i"    # I
    .param p2, "val"    # D

    .prologue
    .line 1788
    aput-wide p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([FIF)V
    .registers 3
    .param p0, "array"    # [F
    .param p1, "i"    # I
    .param p2, "val"    # F

    .prologue
    .line 1786
    aput p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([III)V
    .registers 3
    .param p0, "array"    # [I
    .param p1, "i"    # I
    .param p2, "val"    # I

    .prologue
    .line 1782
    aput p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([JIJ)V
    .registers 4
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "val"    # J

    .prologue
    .line 1784
    aput-wide p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([SIS)V
    .registers 3
    .param p0, "array"    # [S
    .param p1, "i"    # I
    .param p2, "val"    # S

    .prologue
    .line 1780
    aput-short p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([ZIZ)V
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "i"    # I
    .param p2, "val"    # Z

    .prologue
    .line 1776
    aput-boolean p2, p0, p1

    return-void
.end method

.method public static catchException(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 13
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "handler"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/invoke/MethodHandle;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .prologue
    .local p1, "exType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2863
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 2864
    .local v5, "ttype":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 2865
    .local v2, "htype":Ljava/lang/invoke/MethodType;
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v6

    if-lt v6, v9, :cond_1c

    .line 2866
    invoke-virtual {v2, v8}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 2865
    if-eqz v6, :cond_35

    .line 2867
    :cond_1c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handler does not accept exception type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 2868
    :cond_35
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_47

    .line 2869
    const-string/jumbo v6, "target and handler return types"

    invoke-static {v6, v5, v2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 2870
    :cond_47
    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v3

    .line 2871
    .local v3, "targs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v0

    .line 2872
    .local v0, "hargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0, v9, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 2873
    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 2874
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "hpc":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2875
    .local v4, "tpc":I
    if-ge v1, v4, :cond_73

    invoke-interface {v3, v8, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7b

    .line 2876
    :cond_73
    const-string/jumbo v6, "target and handler types"

    invoke-static {v6, v5, v2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 2879
    .end local v1    # "hpc":I
    .end local v4    # "tpc":I
    :cond_7b
    new-instance v6, Ljava/lang/invoke/Transformers$CatchException;

    invoke-direct {v6, p0, p2, p1}, Ljava/lang/invoke/Transformers$CatchException;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static collectArguments(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 2560
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->collectArgumentsChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2561
    .local v0, "newType":Ljava/lang/invoke/MethodType;
    new-instance v1, Ljava/lang/invoke/Transformers$CollectArguments;

    invoke-direct {v1, p0, p2, p1, v0}, Ljava/lang/invoke/Transformers$CollectArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodType;)V

    return-object v1
.end method

.method private static collectArgumentsChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 2565
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 2566
    .local v3, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 2567
    .local v1, "filterType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    .line 2568
    .local v2, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v0

    .line 2569
    .local v0, "filterArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_19

    .line 2570
    invoke-virtual {v3, p1, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    .line 2572
    :cond_19
    invoke-virtual {v3, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    if-eq v2, v4, :cond_27

    .line 2573
    const-string/jumbo v4, "target and filter types do not match"

    invoke-static {v4, v3, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 2575
    :cond_27
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, p1, v4}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4
.end method

.method public static constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .prologue
    .line 2112
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2113
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_12

    .line 2114
    const-string/jumbo v1, "void type"

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2115
    :cond_12
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 2116
    .local v0, "w":Lsun/invoke/util/Wrapper;
    invoke-virtual {v0, p1, p0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 2119
    .end local v0    # "w":Lsun/invoke/util/Wrapper;
    :cond_1a
    new-instance v1, Ljava/lang/invoke/Transformers$Constant;

    invoke-direct {v1, p0, p1}, Ljava/lang/invoke/Transformers$Constant;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static copyTypes(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 2293
    .local p0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2294
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

.method private static dropArgumentChecks(Ljava/lang/invoke/MethodType;ILjava/util/List;)I
    .registers 10
    .param p0, "oldType"    # Ljava/lang/invoke/MethodType;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodType;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .local p2, "valueTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v5, 0x0

    .line 2298
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2299
    .local v0, "dropped":I
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 2300
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    .line 2301
    .local v2, "outargs":I
    add-int v1, v2, v0

    .line 2302
    .local v1, "inargs":I
    if-ltz p1, :cond_12

    if-le p1, v2, :cond_4c

    .line 2303
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no argument type to remove"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2304
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2306
    :cond_4c
    return v0
.end method

.method public static dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .prologue
    .line 2280
    .local p2, "valueTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->copyTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 2281
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 2282
    .local v2, "oldType":Ljava/lang/invoke/MethodType;
    invoke-static {v2, p1, p2}, Ljava/lang/invoke/MethodHandles;->dropArgumentChecks(Ljava/lang/invoke/MethodType;ILjava/util/List;)I

    move-result v0

    .line 2284
    .local v0, "dropped":I
    invoke-virtual {v2, p1, p2}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 2285
    .local v1, "newType":Ljava/lang/invoke/MethodType;
    if-nez v0, :cond_13

    .line 2286
    return-object p0

    .line 2289
    :cond_13
    new-instance v3, Ljava/lang/invoke/Transformers$DropArguments;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v1, p0, p1, v4}, Ljava/lang/invoke/Transformers$DropArguments;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;II)V

    return-object v3
.end method

.method public static varargs dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .prologue
    .line 2358
    .local p2, "valueTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 1887
    new-instance v0, Ljava/lang/invoke/Transformers$Invoker;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/lang/invoke/Transformers$Invoker;-><init>(Ljava/lang/invoke/MethodType;Z)V

    return-object v0
.end method

.method public static explicitCastArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 1984
    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandles;->explicitCastArgumentsChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    .line 1986
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1987
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    if-ne v0, p1, :cond_a

    return-object p0

    .line 1988
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/invoke/MethodType;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1989
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1992
    :cond_19
    new-instance v1, Ljava/lang/invoke/Transformers$ExplicitCastArguments;

    invoke-direct {v1, p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    return-object v1
.end method

.method private static explicitCastArgumentsChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 1996
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    if-eq v0, v1, :cond_33

    .line 1997
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot explicitly cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1999
    :cond_33
    return-void
.end method

.method private static filterArgumentChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 2445
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 2446
    .local v1, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2447
    .local v0, "filterType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 2448
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_21

    .line 2449
    :cond_19
    const-string/jumbo v2, "target and filter types do not match"

    invoke-static {v2, v1, v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2450
    :cond_21
    return-void
.end method

.method public static varargs filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 2428
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->filterArgumentsCheckArity(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V

    .line 2430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_11

    .line 2431
    add-int v1, v0, p1

    aget-object v2, p2, v0

    invoke-static {p0, v1, v2}, Ljava/lang/invoke/MethodHandles;->filterArgumentChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V

    .line 2430
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2434
    :cond_11
    new-instance v1, Ljava/lang/invoke/Transformers$FilterArguments;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/invoke/Transformers$FilterArguments;-><init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V

    return-object v1
.end method

.method private static filterArgumentsCheckArity(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 2438
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 2439
    .local v1, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 2440
    .local v0, "maxPos":I
    array-length v2, p2

    add-int/2addr v2, p1

    if-le v2, v0, :cond_14

    .line 2441
    const-string/jumbo v2, "too many filters"

    invoke-static {v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2442
    :cond_14
    return-void
.end method

.method public static filterReturnValue(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "filter"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 2637
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 2638
    .local v1, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2639
    .local v0, "filterType":Ljava/lang/invoke/MethodType;
    invoke-static {v1, v0}, Ljava/lang/invoke/MethodHandles;->filterReturnValueChecks(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 2641
    new-instance v2, Ljava/lang/invoke/Transformers$FilterReturnValue;

    invoke-direct {v2, p0, p1}, Ljava/lang/invoke/Transformers$FilterReturnValue;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v2
.end method

.method private static filterReturnValueChecks(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p0, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p1, "filterType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2645
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 2646
    .local v1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 2647
    .local v0, "filterValues":I
    if-nez v0, :cond_17

    .line 2648
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_20

    .line 2650
    :cond_f
    const-string/jumbo v2, "target and filter types do not match"

    invoke-static {v2, p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2649
    :cond_17
    invoke-virtual {p1, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 2651
    :cond_20
    return-void
.end method

.method private static foldArgumentChecks(ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/Class;
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
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2740
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 2741
    .local v1, "foldArgs":I
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v4

    .line 2742
    .local v4, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_4b

    const/4 v2, 0x0

    .line 2743
    .local v2, "foldVals":I
    :goto_e
    add-int v0, p0, v2

    .line 2744
    .local v0, "afterInsertPos":I
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v5

    add-int v6, v0, v1

    if-lt v5, v6, :cond_4d

    const/4 v3, 0x1

    .line 2745
    .local v3, "ok":Z
    :goto_19
    if-eqz v3, :cond_32

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v5

    .line 2746
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v6

    .line 2747
    add-int v7, v0, v1

    .line 2746
    invoke-interface {v6, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 2745
    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_32

    .line 2748
    const/4 v3, 0x0

    .line 2749
    :cond_32
    if-eqz v3, :cond_41

    if-eqz v2, :cond_41

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v8}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_41

    .line 2750
    const/4 v3, 0x0

    .line 2751
    :cond_41
    if-nez v3, :cond_4f

    .line 2752
    const-string/jumbo v5, "target and combiner types"

    invoke-static {v5, p1, p2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 2742
    .end local v0    # "afterInsertPos":I
    .end local v2    # "foldVals":I
    .end local v3    # "ok":Z
    :cond_4b
    const/4 v2, 0x1

    .restart local v2    # "foldVals":I
    goto :goto_e

    .line 2744
    .restart local v0    # "afterInsertPos":I
    :cond_4d
    const/4 v3, 0x0

    .restart local v3    # "ok":Z
    goto :goto_19

    .line 2753
    :cond_4f
    return-object v4
.end method

.method public static foldArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 2731
    const/4 v1, 0x0

    .line 2732
    .local v1, "foldPos":I
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 2733
    .local v3, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2734
    .local v0, "combinerType":Ljava/lang/invoke/MethodType;
    invoke-static {v1, v3, v0}, Ljava/lang/invoke/MethodHandles;->foldArgumentChecks(ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/Class;

    move-result-object v2

    .line 2736
    .local v2, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/invoke/Transformers$FoldArguments;

    invoke-direct {v4, p0, p1}, Ljava/lang/invoke/Transformers$FoldArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v4
.end method

.method private static getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;
    .registers 4
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 1687
    instance-of v0, p0, Ljava/lang/invoke/Transformers$Construct;

    if-eqz v0, :cond_a

    .line 1688
    check-cast p0, Ljava/lang/invoke/Transformers$Construct;

    .end local p0    # "target":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Construct;->getConstructorHandle()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 1693
    .restart local p0    # "target":Ljava/lang/invoke/MethodHandle;
    :cond_a
    instance-of v0, p0, Ljava/lang/invoke/Transformers$VarargsCollector;

    if-eqz v0, :cond_12

    .line 1694
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 1697
    :cond_12
    instance-of v0, p0, Ljava/lang/invoke/MethodHandleImpl;

    if-eqz v0, :cond_19

    .line 1698
    check-cast p0, Ljava/lang/invoke/MethodHandleImpl;

    .end local p0    # "target":Ljava/lang/invoke/MethodHandle;
    return-object p0

    .line 1701
    .restart local p0    # "target":Ljava/lang/invoke/MethodHandle;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a direct handle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 12
    .param p0, "test"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "fallback"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 2792
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 2793
    .local v3, "gtype":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 2794
    .local v6, "ttype":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2795
    .local v0, "ftype":Ljava/lang/invoke/MethodType;
    invoke-virtual {v6, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 2796
    const-string/jumbo v7, "target and fallback types"

    invoke-static {v7, v6, v0}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 2797
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_3b

    .line 2798
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "guard type is not a predicate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 2799
    :cond_3b
    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v4

    .line 2800
    .local v4, "targs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v1

    .line 2801
    .local v1, "gargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 2802
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "gpc":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2803
    .local v5, "tpc":I
    if-ge v2, v5, :cond_60

    const/4 v7, 0x0

    invoke-interface {v4, v7, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_68

    .line 2804
    :cond_60
    const-string/jumbo v7, "target and test types"

    invoke-static {v7, v6, v3}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 2805
    :cond_68
    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {p0, v2, v7}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 2806
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 2809
    .end local v2    # "gpc":I
    .end local v5    # "tpc":I
    :cond_74
    new-instance v7, Ljava/lang/invoke/Transformers$GuardWithTest;

    invoke-direct {v7, p0, p1, p2}, Ljava/lang/invoke/Transformers$GuardWithTest;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v7
.end method

.method public static identity(B)B
    .registers 1
    .param p0, "val"    # B

    .prologue
    .line 2147
    return p0
.end method

.method public static identity(C)C
    .registers 1
    .param p0, "val"    # C

    .prologue
    .line 2149
    return p0
.end method

.method public static identity(D)D
    .registers 2
    .param p0, "val"    # D

    .prologue
    .line 2154
    return-wide p0
.end method

.method public static identity(F)F
    .registers 1
    .param p0, "val"    # F

    .prologue
    .line 2153
    return p0
.end method

.method public static identity(I)I
    .registers 1
    .param p0, "val"    # I

    .prologue
    .line 2151
    return p0
.end method

.method public static identity(J)J
    .registers 2
    .param p0, "val"    # J

    .prologue
    .line 2152
    return-wide p0
.end method

.method public static identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .prologue
    .line 2131
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_b

    .line 2132
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "type == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2135
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2137
    :try_start_11
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/lang/invoke/MethodHandles;

    const-string/jumbo v3, "identity"

    .line 2138
    invoke-static {p0, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 2137
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_1f} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_1f} :catch_21

    move-result-object v1

    return-object v1

    .line 2139
    :catch_21
    move-exception v0

    .line 2140
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2144
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_28
    new-instance v1, Ljava/lang/invoke/Transformers$ReferenceIdentity;

    invoke-direct {v1, p0}, Ljava/lang/invoke/Transformers$ReferenceIdentity;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static identity(S)S
    .registers 1
    .param p0, "val"    # S

    .prologue
    .line 2150
    return p0
.end method

.method public static identity(Z)Z
    .registers 1
    .param p0, "val"    # Z

    .prologue
    .line 2148
    return p0
.end method

.method public static varargs insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 2188
    array-length v1, p2

    .line 2189
    .local v1, "insCount":I
    invoke-static {p0, v1, p1}, Ljava/lang/invoke/MethodHandles;->insertArgumentsChecks(Ljava/lang/invoke/MethodHandle;II)[Ljava/lang/Class;

    move-result-object v3

    .line 2190
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v1, :cond_8

    .line 2191
    return-object p0

    .line 2196
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_2e

    .line 2197
    add-int v4, p1, v0

    aget-object v2, v3, v4

    .line 2198
    .local v2, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2199
    add-int v4, p1, v0

    aget-object v4, v3, v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2202
    :cond_21
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5, v2}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v0

    goto :goto_1e

    .line 2206
    .end local v2    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2e
    new-instance v4, Ljava/lang/invoke/Transformers$InsertArguments;

    invoke-direct {v4, p0, p1, p2}, Ljava/lang/invoke/Transformers$InsertArguments;-><init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)V

    return-object v4
.end method

.method private static insertArgumentsChecks(Ljava/lang/invoke/MethodHandle;II)[Ljava/lang/Class;
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "insCount"    # I
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "II)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 2226
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 2227
    .local v1, "oldType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    .line 2228
    .local v2, "outargs":I
    sub-int v0, v2, p1

    .line 2229
    .local v0, "inargs":I
    if-gez v0, :cond_14

    .line 2230
    const-string/jumbo v3, "too many values to insert"

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2231
    :cond_14
    if-ltz p2, :cond_18

    if-le p2, v0, :cond_20

    .line 2232
    :cond_18
    const-string/jumbo v3, "no argument type to append"

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2233
    :cond_20
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    return-object v3
.end method

.method public static invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 1926
    new-instance v0, Ljava/lang/invoke/Transformers$Invoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/lang/invoke/Transformers$Invoker;-><init>(Ljava/lang/invoke/MethodType;Z)V

    return-object v0
.end method

.method public static lookup()Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method static misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;
    .registers 5
    .param p0, "what"    # Ljava/lang/String;
    .param p1, "t1"    # Ljava/lang/invoke/MethodType;
    .param p2, "t2"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 2813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " must match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static permuteArgumentChecks([ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Z
    .registers 11
    .param p0, "reorder"    # [I
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;
    .param p2, "oldType"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 2073
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_12

    .line 2074
    const-string/jumbo v6, "return types do not match"

    invoke-static {v6, p2, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 2076
    :cond_12
    array-length v6, p0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v7

    if-ne v6, v7, :cond_42

    .line 2077
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v4

    .line 2078
    .local v4, "limit":I
    const/4 v0, 0x0

    .line 2079
    .local v0, "bad":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1f
    array-length v6, p0

    if-ge v3, v6, :cond_29

    .line 2080
    aget v2, p0, v3

    .line 2081
    .local v2, "i":I
    if-ltz v2, :cond_28

    if-lt v2, v4, :cond_2d

    .line 2082
    :cond_28
    const/4 v0, 0x1

    .line 2090
    .end local v2    # "i":I
    :cond_29
    if-nez v0, :cond_42

    const/4 v6, 0x1

    return v6

    .line 2084
    .restart local v2    # "i":I
    :cond_2d
    invoke-virtual {p1, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v5

    .line 2085
    .local v5, "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 2086
    .local v1, "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v5, v1, :cond_3f

    .line 2087
    const-string/jumbo v6, "parameter types do not match after reorder"

    invoke-static {v6, p2, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 2079
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 2092
    .end local v0    # "bad":Z
    .end local v1    # "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "limit":I
    .end local v5    # "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bad reorder array: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method public static varargs permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;
    .param p2, "reorder"    # [I

    .prologue
    .line 2062
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "reorder":[I
    check-cast p2, [I

    .line 2063
    .restart local p2    # "reorder":[I
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2064
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-static {p2, p1, v0}, Ljava/lang/invoke/MethodHandles;->permuteArgumentChecks([ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Z

    .line 2066
    new-instance v1, Ljava/lang/invoke/Transformers$PermuteArguments;

    invoke-direct {v1, p1, p0, p2}, Ljava/lang/invoke/Transformers$PermuteArguments;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[I)V

    return-object v1
.end method

.method public static publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    return-object v0
.end method

.method public static reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;
    .registers 4
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/invoke/MethodHandle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/lang/invoke/MethodHandles;->getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    .line 142
    .local v0, "directTarget":Ljava/lang/invoke/MethodHandleImpl;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandleImpl;->getMemberInternal()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Member;

    return-object v1
.end method

.method public static spreadInvoker(Ljava/lang/invoke/MethodType;I)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p0, "type"    # Ljava/lang/invoke/MethodType;
    .param p1, "leadingArgCount"    # I

    .prologue
    .line 1841
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    if-le p1, v2, :cond_14

    .line 1842
    :cond_8
    const-string/jumbo v2, "bad argument count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1844
    :cond_14
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 1845
    .local v0, "invoker":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    sub-int v1, v2, p1

    .line 1846
    .local v1, "spreadArgCount":I
    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/invoke/MethodHandle;->asSpreader(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 1847
    return-object v0
.end method

.method public static throwException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .prologue
    .line 2896
    .local p0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "exType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2897
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2899
    :cond_12
    new-instance v0, Ljava/lang/invoke/Transformers$AlwaysThrow;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$AlwaysThrow;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
