.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;
.implements Ljava/lang/reflect/AnnotatedElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Class$Caches;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/reflect/AnnotatedElement;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ANNOTATION:I = 0x2000

.field private static final greylist-max-o ENUM:I = 0x4000

.field private static final greylist-max-o FINALIZABLE:I = -0x80000000

.field private static final greylist-max-o SYNTHETIC:I = 0x1000

.field private static final whitelist serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient greylist accessFlags:I

.field private transient greylist-max-o classFlags:I

.field private transient greylist classLoader:Ljava/lang/ClassLoader;

.field private transient greylist-max-o classSize:I

.field private transient greylist clinitThreadId:I

.field private transient greylist-max-o componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o copiedMethodsOffset:S

.field private transient greylist dexCache:Ljava/lang/Object;

.field private transient greylist dexClassDefIndex:I

.field private volatile transient greylist-max-o dexTypeIndex:I

.field private transient greylist-max-o extData:Ldalvik/system/ClassExt;

.field private transient greylist-max-o iFields:J

.field private transient greylist ifTable:[Ljava/lang/Object;

.field private transient greylist-max-o methods:J

.field private transient greylist name:Ljava/lang/String;

.field private transient greylist-max-o numReferenceInstanceFields:I

.field private transient greylist-max-o numReferenceStaticFields:I

.field private transient greylist objectSize:I

.field private transient greylist-max-o objectSizeAllocFastPath:I

.field private transient greylist-max-o primitiveType:I

.field private transient greylist-max-o referenceInstanceOffsets:I

.field private transient greylist-max-o sFields:J

.field private transient greylist status:I

.field private transient greylist-max-o superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o virtualMethodsOffset:S

.field private transient greylist-max-o vtable:Ljava/lang/Object;


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 255
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o cannotCastMsg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2451
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot cast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native greylist-max-o classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o classNameImpliesTopLevel()Z
    .registers 3

    .line 1172
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o findInterfaceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 2111
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 2112
    .local v0, "iftable":[Ljava/lang/Object;
    if-eqz v0, :cond_21

    .line 2116
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_21

    .line 2117
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Class;

    .line 2118
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2119
    .local v3, "result":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2120
    return-object v3

    .line 2116
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "result":Ljava/lang/reflect/Method;
    :cond_1e
    add-int/lit8 v1, v1, -0x2

    goto :goto_7

    .line 2125
    .end local v1    # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist core-platform-api test-api forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 378
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 379
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/ClassLoader;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "initialize"    # Z
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 449
    if-nez p2, :cond_6

    .line 450
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object p2

    .line 454
    :cond_6
    :try_start_6
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_a} :catch_c

    .line 461
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 462
    return-object v0

    .line 455
    .end local v0    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_c
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 457
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/LinkageError;

    if-eqz v2, :cond_19

    .line 458
    move-object v2, v1

    check-cast v2, Ljava/lang/LinkageError;

    throw v2

    .line 460
    :cond_19
    throw v0
.end method

.method private greylist-max-o getConstructor0([Ljava/lang/Class;I)Ljava/lang/reflect/Constructor;
    .registers 7
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 2321
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_4

    .line 2322
    sget-object p1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 2324
    :cond_4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    .line 2325
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_f

    .line 2324
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2326
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "parameter type is null"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2329
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2330
    .local v0, "result":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v0, :cond_2a

    if-nez p2, :cond_29

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2334
    :cond_29
    return-object v0

    .line 2331
    :cond_2a
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".<init> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native greylist-max-o getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getEnclosingConstructorNative()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getEnclosingMethodNative()Ljava/lang/reflect/Method;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getInnerClassFlags(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getInnerClassName()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getInterfacesInternal()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "recursivePublicMethods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 2055
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_5e

    .line 2058
    if-nez p2, :cond_6

    .line 2059
    sget-object p2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 2061
    :cond_6
    array-length v0, p2

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_19

    aget-object v2, p2, v1

    .line 2062
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_11

    .line 2061
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2063
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "parameter type is null"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2066
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_19
    if-eqz p3, :cond_20

    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_24

    .line 2067
    :cond_20
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_24
    nop

    .line 2069
    .local v0, "result":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_34

    if-eqz p3, :cond_33

    .line 2070
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2074
    :cond_33
    return-object v0

    .line 2071
    :cond_34
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2056
    .end local v0    # "result":Ljava/lang/reflect/Method;
    :cond_5e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native greylist-max-o getNameNative()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native greylist-max-o getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getPublicDeclaredFields()[Ljava/lang/reflect/Field;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o getPublicFieldsRecursive(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 1420
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_d

    .line 1421
    invoke-direct {v0}, Ljava/lang/Class;->getPublicDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1420
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_1

    .line 1425
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    iget-object v0, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1426
    .local v0, "iftable":[Ljava/lang/Object;
    if-eqz v0, :cond_23

    .line 1427
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_23

    .line 1428
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v2}, Ljava/lang/Class;->getPublicDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1427
    add-int/lit8 v1, v1, 0x2

    goto :goto_12

    .line 1431
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private greylist-max-o getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 2078
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_19

    .line 2079
    invoke-direct {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2080
    .local v1, "result":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2081
    return-object v1

    .line 2078
    .end local v1    # "result":Ljava/lang/reflect/Method;
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 2085
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_19
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->findInterfaceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getPublicMethodsInternal(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 1502
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1503
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1505
    iget-object v1, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_10
    if-eqz v1, :cond_1c

    .line 1506
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1505
    iget-object v1, v1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_10

    .line 1510
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c
    iget-object v1, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1511
    .local v1, "iftable":[Ljava/lang/Object;
    if-eqz v1, :cond_32

    .line 1512
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    array-length v3, v1

    if-ge v2, v3, :cond_32

    .line 1513
    aget-object v3, v1, v2

    check-cast v3, Ljava/lang/Class;

    .line 1514
    .local v3, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1512
    .end local v3    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x2

    goto :goto_21

    .line 1517
    .end local v2    # "i":I
    :cond_32
    return-void
.end method

.method private native greylist-max-o getSignatureAnnotation()[Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o getSignatureAttribute()Ljava/lang/String;
    .registers 6

    .line 2624
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    .line 2625
    .local v0, "annotation":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 2626
    const/4 v1, 0x0

    return-object v1

    .line 2628
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2629
    .local v1, "result":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    .line 2630
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2632
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private native greylist-max-o isDeclaredAnnotationPresent(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o isLocalOrAnonymousClass()Z
    .registers 2

    .line 1338
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private greylist-max-o resolveName(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .line 2298
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_3

    .line 2299
    return-object p1

    .line 2301
    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2302
    move-object v1, p0

    .line 2303
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2304
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    .line 2306
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2307
    .local v2, "baseName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 2308
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_41

    .line 2309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2312
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "baseName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_41
    goto :goto_47

    .line 2313
    :cond_42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2315
    :goto_47
    return-object p1
.end method


# virtual methods
.method public whitelist core-platform-api test-api asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Ljava/lang/Class<",
            "+TU;>;"
        }
    .end annotation

    .line 2478
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2479
    return-object p0

    .line 2481
    :cond_7
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be cast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2482
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 2445
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_13

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    .line 2446
    :cond_9
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljava/lang/Class;->cannotCastMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2447
    :cond_13
    :goto_13
    return-object p1
.end method

.method public whitelist core-platform-api test-api desiredAssertionStatus()Z
    .registers 2

    .line 2375
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAccessFlags()I
    .registers 2

    .line 2651
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    return v0
.end method

.method public whitelist core-platform-api test-api getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 2491
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2494
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v0, :cond_a

    .line 2495
    return-object v0

    .line 2498
    :cond_a
    const-class v1, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2499
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_16
    if-eqz v1, :cond_24

    .line 2500
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2501
    if-eqz v0, :cond_1f

    .line 2502
    return-object v0

    .line 2499
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_16

    .line 2507
    .end local v1    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist core-platform-api test-api getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 10

    .line 2584
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2585
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_1a

    aget-object v5, v1, v4

    .line 2586
    .local v5, "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    .end local v5    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2588
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1e
    if-eqz v1, :cond_47

    .line 2589
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_26
    if-ge v5, v4, :cond_42

    aget-object v6, v2, v5

    .line 2590
    .local v6, "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v7

    .line 2591
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const-class v8, Ljava/lang/annotation/Inherited;

    invoke-direct {v7, v8}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 2592
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2589
    .end local v6    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 2588
    :cond_42
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1e

    .line 2598
    .end local v1    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_47
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2599
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/annotation/Annotation;

    return-object v2
.end method

.method public whitelist core-platform-api test-api getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)[TA;"
        }
    .end annotation

    .line 2543
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-super {p0, p1}, Ljava/lang/reflect/GenericDeclaration;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2545
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;, "[TA;"
    array-length v1, v0

    if-eqz v1, :cond_8

    .line 2546
    return-object v0

    .line 2556
    :cond_8
    const-class v1, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2557
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 2559
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1b

    .line 2560
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    return-object v2

    .line 2565
    .end local v1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public whitelist core-platform-api test-api getCanonicalName()Ljava/lang/String;
    .registers 5

    .line 1277
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 1278
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1282
    :cond_23
    return-object v1

    .line 1284
    .end local v0    # "canonicalName":Ljava/lang/String;
    :cond_24
    invoke-direct {p0}, Ljava/lang/Class;->isLocalOrAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1285
    return-object v1

    .line 1286
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .line 1287
    .local v0, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_36

    .line 1288
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1290
    :cond_36
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 1291
    .local v2, "enclosingName":Ljava/lang/String;
    if-nez v2, :cond_3d

    .line 1292
    return-object v1

    .line 1293
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 779
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 780
    const/4 v0, 0x0

    return-object v0

    .line 784
    :cond_8
    iget-object v0, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_10

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public whitelist core-platform-api test-api getClasses()[Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1359
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6
    if-eqz v1, :cond_25

    .line 1361
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 1362
    .local v5, "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1363
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    .end local v5    # "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1360
    :cond_22
    iget-object v1, v1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_6

    .line 1367
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    return-object v1
.end method

.method public whitelist core-platform-api test-api getComponentType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1059
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs whitelist core-platform-api test-api getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1728
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor0([Ljava/lang/Class;I)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1550
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/Class;->getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist core-platform-api test-api getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist core-platform-api test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist core-platform-api test-api getDeclaredClasses()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public varargs whitelist core-platform-api test-api getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 2170
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor0([Ljava/lang/Class;I)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1938
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Class;->getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist core-platform-api test-api getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist core-platform-api test-api getDeclaredFields()[Ljava/lang/reflect/Field;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist-max-o core-platform-api getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public varargs whitelist core-platform-api test-api getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 2050
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDeclaredMethods()[Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1880
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1881
    .local v1, "result":[Ljava/lang/reflect/Method;
    array-length v2, v1

    :goto_6
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    .line 1883
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 1884
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 1881
    .end local v3    # "m":Ljava/lang/reflect/Method;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1886
    :cond_13
    return-object v1
.end method

.method public native greylist core-platform-api getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist core-platform-api test-api getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist core-platform-api test-api getEnclosingClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist core-platform-api test-api getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1162
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1163
    const/4 v0, 0x0

    return-object v0

    .line 1165
    :cond_8
    invoke-direct {p0}, Ljava/lang/Class;->getEnclosingConstructorNative()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getEnclosingMethod()Ljava/lang/reflect/Method;
    .registers 2

    .line 1140
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1141
    const/4 v0, 0x0

    return-object v0

    .line 1143
    :cond_8
    invoke-direct {p0}, Ljava/lang/Class;->getEnclosingMethodNative()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getEnumConstants()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 2414
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstantsShared()[Ljava/lang/Object;

    move-result-object v0

    .line 2415
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    if-eqz v0, :cond_d

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public greylist-max-o getEnumConstantsShared()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 2427
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2428
    :cond_8
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1599
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_f

    .line 1602
    invoke-direct {p0, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1603
    .local v0, "result":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_9

    .line 1606
    return-object v0

    .line 1604
    :cond_9
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1600
    .end local v0    # "result":Ljava/lang/reflect/Field;
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getFields()[Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1409
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1410
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 1411
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    return-object v1
.end method

.method public whitelist core-platform-api test-api getGenericInterfaces()[Ljava/lang/reflect/Type;
    .registers 7

    .line 1030
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v0

    monitor-enter v0

    .line 1031
    :try_start_5
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    .line 1032
    .local v1, "result":[Ljava/lang/reflect/Type;
    if-nez v1, :cond_38

    .line 1033
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v2

    .line 1034
    .local v2, "annotationSignature":Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 1035
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    goto :goto_31

    .line 1037
    :cond_1d
    new-instance v3, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v4}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1038
    .local v3, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v3, p0, v2}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1039
    iget-object v4, v3, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v1, v4

    .line 1041
    .end local v3    # "parser":Llibcore/reflect/GenericSignatureParser;
    :goto_31
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    .end local v2    # "annotationSignature":Ljava/lang/String;
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_45

    .line 1044
    array-length v0, v1

    if-nez v0, :cond_3e

    move-object v0, v1

    goto :goto_44

    :cond_3e
    invoke-virtual {v1}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    :goto_44
    return-object v0

    .line 1043
    .end local v1    # "result":[Ljava/lang/reflect/Type;
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public whitelist core-platform-api test-api getGenericSuperclass()Ljava/lang/reflect/Type;
    .registers 5

    .line 865
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 868
    .local v0, "genericSuperclass":Ljava/lang/reflect/Type;
    if-nez v0, :cond_8

    .line 869
    const/4 v1, 0x0

    return-object v1

    .line 872
    :cond_8
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "annotationSignature":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 874
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 875
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v2, p0, v1}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 876
    iget-object v0, v2, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 878
    .end local v2    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_1c
    invoke-static {v0}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o getInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 2100
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_19

    .line 2101
    invoke-direct {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2102
    .local v1, "result":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2103
    return-object v1

    .line 2100
    .end local v1    # "result":Ljava/lang/reflect/Method;
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 2107
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_19
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->findInterfaceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getInterfaces()[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 963
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 964
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Cloneable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/io/Serializable;

    aput-object v2, v0, v1

    return-object v0

    .line 967
    :cond_14
    invoke-direct {p0}, Ljava/lang/Class;->getInterfacesInternal()[Ljava/lang/Class;

    move-result-object v0

    .line 968
    .local v0, "ifaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_1d

    .line 969
    sget-object v1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    return-object v1

    .line 972
    :cond_1d
    return-object v0
.end method

.method public varargs whitelist core-platform-api test-api getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1693
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getMethods()[Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1486
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1487
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsInternal(Ljava/util/List;)V

    .line 1493
    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1494
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public whitelist core-platform-api test-api getModifiers()I
    .registers 4

    .line 1096
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1097
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 1098
    .local v0, "componentModifiers":I
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_14

    .line 1099
    and-int/lit16 v0, v0, -0x209

    .line 1101
    :cond_14
    or-int/lit16 v1, v0, 0x410

    return v1

    .line 1103
    .end local v0    # "componentModifiers":I
    :cond_17
    const v0, 0xffff

    .line 1104
    .local v0, "JAVA_FLAGS_MASK":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    and-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/Class;->getInnerClassFlags(I)I

    move-result v1

    .line 1105
    .local v1, "modifiers":I
    and-int v2, v1, v0

    return v2
.end method

.method public whitelist core-platform-api test-api getName()Ljava/lang/String;
    .registers 3

    .line 743
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 744
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 745
    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 746
    :cond_b
    return-object v0
.end method

.method public whitelist core-platform-api test-api getPackage()Ljava/lang/Package;
    .registers 4

    .line 897
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 898
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 899
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    :cond_11
    return-object v1

    .line 902
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_12
    return-object v1
.end method

.method public greylist-max-o core-platform-api getPackageName$()Ljava/lang/String;
    .registers 4

    .line 912
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 914
    .local v1, "last":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/4 v2, 0x0

    goto :goto_14

    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_14
    return-object v2
.end method

.method public whitelist core-platform-api test-api getProtectionDomain()Ljava/security/ProtectionDomain;
    .registers 2

    .line 2283
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2253
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Ljava/lang/Class;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2254
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2255
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_f

    .line 2257
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 2259
    :cond_f
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2209
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Ljava/lang/Class;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2210
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2211
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_f

    .line 2213
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 2215
    :cond_f
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api getSigners()[Ljava/lang/Object;
    .registers 2

    .line 1117
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSimpleName()Ljava/lang/String;
    .registers 4

    .line 1215
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1218
    :cond_20
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1219
    const-string v0, ""

    return-object v0

    .line 1222
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_4e

    .line 1231
    :cond_36
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "simpleName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1233
    .local v2, "dot":I
    if-lez v2, :cond_4d

    .line 1234
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1237
    :cond_4d
    return-object v0

    .line 1228
    .end local v0    # "simpleName":Ljava/lang/String;
    .end local v2    # "dot":I
    :cond_4e
    :goto_4e
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSuperclass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 828
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 829
    const/4 v0, 0x0

    return-object v0

    .line 831
    :cond_8
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getTypeName()Ljava/lang/String;
    .registers 6

    .line 1247
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1249
    move-object v0, p0

    .line 1250
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1251
    .local v1, "dimensions":I
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1252
    add-int/lit8 v1, v1, 0x1

    .line 1253
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    goto :goto_8

    .line 1255
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v1, :cond_2d

    .line 1258
    const-string v4, "[]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1260
    .end local v3    # "i":I
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_32

    return-object v3

    .line 1261
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "dimensions":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catchall_32
    move-exception v0

    .line 1263
    :cond_33
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "TT;>;>;"
        }
    .end annotation

    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 804
    :try_start_1
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 806
    sget-object v1, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1b

    monitor-exit p0

    return-object v1

    .line 808
    .end local p0    # "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_b
    :try_start_b
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 809
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 810
    iget-object v2, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v2

    .line 803
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api isAnnotation()Z
    .registers 2

    .line 676
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist core-platform-api test-api isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 2517
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz p1, :cond_26

    .line 2521
    invoke-direct {p0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2522
    return v1

    .line 2525
    :cond_a
    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v0}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2526
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_16
    if-eqz v0, :cond_24

    .line 2527
    invoke-direct {v0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2528
    return v1

    .line 2526
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_16

    .line 2533
    .end local v0    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_24
    const/4 v0, 0x0

    return v0

    .line 2518
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist core-platform-api test-api isAnonymousClass()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist core-platform-api test-api isArray()Z
    .registers 2

    .line 619
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api isAssignableFrom(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 571
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 572
    return v0

    .line 573
    :cond_4
    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_e

    .line 574
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 575
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 576
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    iget-object v3, p1, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0

    .line 577
    :cond_28
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 579
    iget-object v1, p1, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 580
    .local v1, "iftable":[Ljava/lang/Object;
    if-eqz v1, :cond_3e

    .line 581
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    array-length v4, v1

    if-ge v3, v4, :cond_3e

    .line 582
    aget-object v4, v1, v3

    if-ne v4, p0, :cond_3b

    .line 583
    return v0

    .line 581
    :cond_3b
    add-int/lit8 v3, v3, 0x2

    goto :goto_33

    .line 587
    .end local v3    # "i":I
    :cond_3e
    return v2

    .line 589
    .end local v1    # "iftable":[Ljava/lang/Object;
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 590
    :cond_45
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    if-eqz p1, :cond_4c

    .line 591
    if-ne p1, p0, :cond_45

    .line 592
    return v0

    .line 596
    :cond_4c
    return v2
.end method

.method public whitelist core-platform-api test-api isEnum()Z
    .registers 3

    .line 2399
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    .line 2400
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 2399
    :goto_13
    return v0
.end method

.method public greylist-max-o isFinalizable()Z
    .registers 3

    .line 663
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist core-platform-api test-api isInstance(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 539
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_4

    .line 540
    const/4 v0, 0x0

    return v0

    .line 542
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isInterface()Z
    .registers 2

    .line 608
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api isLocalClass()Z
    .registers 2

    .line 1315
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1316
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1315
    :goto_15
    return v0
.end method

.method public whitelist core-platform-api test-api isMemberClass()Z
    .registers 2

    .line 1327
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api isPrimitive()Z
    .registers 3

    .line 651
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->primitiveType:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o isProxy()Z
    .registers 3

    .line 2644
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist core-platform-api test-api isSynthetic()Z
    .registers 2

    .line 688
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public native whitelist core-platform-api test-api newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist core-platform-api test-api toGenericString()Ljava/lang/String;
    .registers 9

    .line 301
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 302
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {}, Ljava/lang/reflect/Modifier;->classModifiers()I

    move-result v2

    and-int/2addr v1, v2

    .line 308
    .local v1, "modifiers":I
    const/16 v2, 0x20

    if-eqz v1, :cond_27

    .line 309
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    :cond_27
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 314
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    :cond_32
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 317
    const-string v3, "interface"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 319
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 320
    const-string v3, "enum"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 322
    :cond_4a
    const-string v3, "class"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :goto_4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 328
    .local v2, "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v3, v2

    if-lez v3, :cond_83

    .line 329
    const/4 v3, 0x1

    .line 330
    .local v3, "first":Z
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    array-length v4, v2

    const/4 v5, 0x0

    :goto_68
    if-ge v5, v4, :cond_7e

    aget-object v6, v2, v5

    .line 332
    .local v6, "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v3, :cond_73

    .line 333
    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    :cond_73
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const/4 v3, 0x0

    .line 331
    .end local v6    # "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 337
    :cond_7e
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    .end local v3    # "first":Z
    :cond_83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 270
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "interface "

    goto :goto_19

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, ""

    goto :goto_19

    :cond_17
    const-string v1, "class "

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    return-object v0
.end method