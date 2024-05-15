.class public Lsun/invoke/util/BytecodeDescriptor;
.super Ljava/lang/Object;
.source "BytecodeDescriptor.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parseMethod(Ljava/lang/String;IILjava/lang/ClassLoader;)Ljava/util/List;
    .registers 12
    .param p0, "bytecodeSignature"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 46
    if-nez p3, :cond_7

    .line 47
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 48
    :cond_7
    move-object v4, p0

    .line 49
    .local v4, "str":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v0, v5, [I

    aput p1, v0, v7

    .line 50
    .local v0, "i":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "ptypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    aget v5, v0, v7

    if-ge v5, p2, :cond_62

    aget v5, v0, v7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_62

    .line 52
    aget v5, v0, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v7

    .line 53
    :goto_26
    aget v5, v0, v7

    if-ge v5, p2, :cond_48

    aget v5, v0, v7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_48

    .line 54
    invoke-static {p0, v0, p2, p3}, Lsun/invoke/util/BytecodeDescriptor;->parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_3e

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_44

    .line 56
    :cond_3e
    const-string/jumbo v5, "bad argument type"

    invoke-static {p0, v5}, Lsun/invoke/util/BytecodeDescriptor;->parseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 59
    .end local v1    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_48
    aget v5, v0, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v7

    .line 63
    :goto_4e
    invoke-static {p0, v0, p2, p3}, Lsun/invoke/util/BytecodeDescriptor;->parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 64
    .local v3, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_58

    aget v5, v0, v7

    if-eq v5, p2, :cond_5e

    .line 65
    :cond_58
    const-string/jumbo v5, "bad return type"

    invoke-static {p0, v5}, Lsun/invoke/util/BytecodeDescriptor;->parseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_5e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v2

    .line 61
    .end local v3    # "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_62
    const-string/jumbo v5, "not a method type"

    invoke-static {p0, v5}, Lsun/invoke/util/BytecodeDescriptor;->parseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public static parseMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 4
    .param p0, "bytecodeSignature"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lsun/invoke/util/BytecodeDescriptor;->parseMethod(Ljava/lang/String;IILjava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 14
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "i"    # [I
    .param p2, "end"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[II",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 75
    aget v6, p1, v8

    if-ne v6, p2, :cond_7

    return-object v9

    .line 76
    :cond_7
    aget v6, p1, v8

    add-int/lit8 v7, v6, 0x1

    aput v7, p1, v8

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 77
    .local v1, "c":C
    const/16 v6, 0x4c

    if-ne v1, v6, :cond_3c

    .line 78
    aget v0, p1, v8

    .local v0, "begc":I
    const/16 v6, 0x3b

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 79
    .local v2, "endc":I
    if-gez v2, :cond_20

    return-object v9

    .line 80
    :cond_20
    add-int/lit8 v6, v2, 0x1

    aput v6, p1, v8

    .line 81
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "name":Ljava/lang/String;
    :try_start_30
    invoke-virtual {p3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_33} :catch_35

    move-result-object v6

    return-object v6

    .line 84
    :catch_35
    move-exception v3

    .line 85
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/TypeNotPresentException;

    invoke-direct {v6, v4, v3}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 87
    .end local v0    # "begc":I
    .end local v2    # "endc":I
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3c
    const/16 v6, 0x5b

    if-ne v1, v6, :cond_4f

    .line 88
    invoke-static {p0, p1, p2, p3}, Lsun/invoke/util/BytecodeDescriptor;->parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 89
    .local v5, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_4e

    .line 90
    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 91
    :cond_4e
    return-object v5

    .line 93
    .end local v5    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4f
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->forBasicType(C)Lsun/invoke/util/Wrapper;

    move-result-object v6

    invoke-virtual {v6}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v6

    return-object v6
.end method

.method public static unparse(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lsun/invoke/util/BytecodeDescriptor;->unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unparse(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # Ljava/lang/Object;

    .prologue
    .line 108
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    .line 109
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/Object;
    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    .restart local p0    # "type":Ljava/lang/Object;
    :cond_b
    instance-of v0, p0, Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_16

    .line 111
    check-cast p0, Ljava/lang/invoke/MethodType;

    .end local p0    # "type":Ljava/lang/Object;
    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    .restart local p0    # "type":Ljava/lang/Object;
    :cond_16
    check-cast p0, Ljava/lang/String;

    .end local p0    # "type":Ljava/lang/Object;
    return-object p0
.end method

.method public static unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/invoke/util/BytecodeDescriptor;->unparseMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unparseMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pt$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 119
    .local v0, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v2}, Lsun/invoke/util/BytecodeDescriptor;->unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    goto :goto_e

    .line 120
    .end local v0    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1e
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p0, v2}, Lsun/invoke/util/BytecodeDescriptor;->unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v3, 0x4c

    .line 126
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-virtual {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar()C

    move-result v0

    .line 127
    .local v0, "c":C
    if-eq v0, v3, :cond_10

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    :cond_f
    :goto_f
    return-void

    .line 130
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    .line 131
    .local v1, "lsemi":Z
    if-eqz v1, :cond_1b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    if-eqz v1, :cond_f

    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f
.end method
