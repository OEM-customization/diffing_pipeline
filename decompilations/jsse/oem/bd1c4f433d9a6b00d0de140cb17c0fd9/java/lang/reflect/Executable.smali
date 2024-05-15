.class public abstract Ljava/lang/reflect/Executable;
.super Ljava/lang/reflect/AccessibleObject;
.source "Executable.java"

# interfaces
.implements Ljava/lang/reflect/Member;
.implements Ljava/lang/reflect/GenericDeclaration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/Executable$GenericInfo;
    }
.end annotation


# instance fields
.field private accessFlags:I

.field private artMethod:J

.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private declaringClassOfOverriddenMethod:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private dexMethodIndex:I

.field private volatile transient hasRealParameterData:Z

.field private volatile transient parameters:[Ljava/lang/reflect/Parameter;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    return-void
.end method

.method private static fixMethodFlags(I)I
    .registers 3
    .param p0, "flags"    # I

    .prologue
    .line 602
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_6

    .line 603
    and-int/lit16 p0, p0, -0x101

    .line 605
    :cond_6
    and-int/lit8 p0, p0, -0x21

    .line 606
    const/high16 v0, 0x20000

    .local v0, "ACC_DECLARED_SYNCHRONIZED":I
    const/high16 v1, 0x20000

    .line 607
    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    .line 608
    or-int/lit8 p0, p0, 0x20

    .line 610
    :cond_11
    const v1, 0xffff

    and-int/2addr v1, p0

    return v1
.end method

.method private native getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native getDeclaredAnnotationsNative()[Ljava/lang/annotation/Annotation;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native getParameters0()[Ljava/lang/reflect/Parameter;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native getSignatureAnnotation()[Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 705
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "annotation":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 707
    return-object v3

    .line 709
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    array-length v4, v0

    :goto_f
    if-ge v3, v4, :cond_19

    aget-object v2, v0, v3

    .line 711
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 713
    .end local v2    # "s":Ljava/lang/String;
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private native isAnnotationPresentNative(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private privateGetParameters()[Ljava/lang/reflect/Parameter;
    .registers 5

    .prologue
    .line 380
    iget-object v2, p0, Ljava/lang/reflect/Executable;->parameters:[Ljava/lang/reflect/Parameter;

    .line 382
    .local v2, "tmp":[Ljava/lang/reflect/Parameter;
    if-nez v2, :cond_13

    .line 385
    :try_start_4
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getParameters0()[Ljava/lang/reflect/Parameter;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_14

    move-result-object v2

    .line 397
    if-nez v2, :cond_21

    .line 398
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/lang/reflect/Executable;->hasRealParameterData:Z

    .line 399
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->synthesizeAllParams()[Ljava/lang/reflect/Parameter;

    move-result-object v2

    .line 405
    :goto_11
    iput-object v2, p0, Ljava/lang/reflect/Executable;->parameters:[Ljava/lang/reflect/Parameter;

    .line 408
    :cond_13
    return-object v2

    .line 386
    :catch_14
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/reflect/MalformedParametersException;

    .line 391
    const-string/jumbo v3, "Invalid parameter metadata in class file"

    .line 390
    invoke-direct {v1, v3}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, "e2":Ljava/lang/reflect/MalformedParametersException;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/MalformedParametersException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 393
    throw v1

    .line 401
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "e2":Ljava/lang/reflect/MalformedParametersException;
    :cond_21
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/lang/reflect/Executable;->hasRealParameterData:Z

    .line 402
    invoke-direct {p0, v2}, Ljava/lang/reflect/Executable;->verifyParameters([Ljava/lang/reflect/Parameter;)V

    goto :goto_11
.end method

.method private synthesizeAllParams()[Ljava/lang/reflect/Parameter;
    .registers 7

    .prologue
    .line 343
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterCount()I

    move-result v2

    .line 344
    .local v2, "realparams":I
    new-array v1, v2, [Ljava/lang/reflect/Parameter;

    .line 345
    .local v1, "out":[Ljava/lang/reflect/Parameter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_28

    .line 350
    new-instance v3, Ljava/lang/reflect/Parameter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "arg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, v0}, Ljava/lang/reflect/Parameter;-><init>(Ljava/lang/String;ILjava/lang/reflect/Executable;I)V

    aput-object v3, v1, v0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 351
    :cond_28
    return-object v1
.end method

.method private verifyParameters([Ljava/lang/reflect/Parameter;)V
    .registers 10
    .param p1, "parameters"    # [Ljava/lang/reflect/Parameter;

    .prologue
    const/4 v7, -0x1

    .line 355
    const v0, 0x9010

    .line 357
    .local v0, "mask":I
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    array-length v5, p1

    if-eq v4, v5, :cond_15

    .line 358
    new-instance v4, Ljava/lang/reflect/MalformedParametersException;

    const-string/jumbo v5, "Wrong number of parameters in MethodParameters attribute"

    invoke-direct {v4, v5}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 360
    :cond_15
    const/4 v4, 0x0

    array-length v5, p1

    :goto_17
    if-ge v4, v5, :cond_7e

    aget-object v3, p1, v4

    .line 361
    .local v3, "parameter":Ljava/lang/reflect/Parameter;
    invoke-virtual {v3}, Ljava/lang/reflect/Parameter;->getRealName()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v1

    .line 364
    .local v1, "mods":I
    if-eqz v2, :cond_6c

    .line 365
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_54

    .line 368
    :cond_33
    new-instance v4, Ljava/lang/reflect/MalformedParametersException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid parameter name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_54
    const/16 v6, 0x3b

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_33

    const/16 v6, 0x5b

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_33

    .line 367
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_33

    .line 372
    :cond_6c
    const v6, 0x9010

    and-int/2addr v6, v1

    if-eq v1, v6, :cond_7b

    .line 373
    new-instance v4, Ljava/lang/reflect/MalformedParametersException;

    const-string/jumbo v5, "Invalid parameter modifiers"

    invoke-direct {v4, v5}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 360
    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 376
    .end local v1    # "mods":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "parameter":Ljava/lang/reflect/Parameter;
    :cond_7e
    return-void
.end method


# virtual methods
.method native compareMethodParametersInternal(Ljava/lang/reflect/Method;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method final equalNameAndParametersInternal(Ljava/lang/reflect/Method;)Z
    .registers 5
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v0, 0x0

    .line 719
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Executable;->compareMethodParametersInternal(Ljava/lang/reflect/Method;)I

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method equalParamTypes([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 58
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_15

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 60
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    if-eq v1, v2, :cond_10

    .line 61
    return v3

    .line 59
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 63
    :cond_13
    const/4 v1, 0x1

    return v1

    .line 65
    .end local v0    # "i":I
    :cond_15
    return v3
.end method

.method public final getAccessFlags()I
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    return v0
.end method

.method getAllGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 12

    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->hasGenericInformation()Z

    move-result v1

    .line 279
    .local v1, "genericInfo":Z
    if-nez v1, :cond_b

    .line 280
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    return-object v9

    .line 282
    :cond_b
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->hasRealParameterData()Z

    move-result v8

    .line 283
    .local v8, "realParamData":Z
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 284
    .local v2, "genericParamTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 285
    .local v4, "nonGenericParamTypes":[Ljava/lang/reflect/Type;
    array-length v9, v4

    new-array v5, v9, [Ljava/lang/reflect/Type;

    .line 286
    .local v5, "out":[Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v7

    .line 287
    .local v7, "params":[Ljava/lang/reflect/Parameter;
    const/4 v0, 0x0

    .line 290
    .local v0, "fromidx":I
    if-eqz v8, :cond_41

    .line 291
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    array-length v9, v5

    if-ge v3, v9, :cond_48

    .line 292
    aget-object v6, v7, v3

    .line 293
    .local v6, "param":Ljava/lang/reflect/Parameter;
    invoke-virtual {v6}, Ljava/lang/reflect/Parameter;->isSynthetic()Z

    move-result v9

    if-nez v9, :cond_33

    invoke-virtual {v6}, Ljava/lang/reflect/Parameter;->isImplicit()Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 296
    :cond_33
    aget-object v9, v4, v3

    aput-object v9, v5, v3

    .line 291
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 299
    :cond_3a
    aget-object v9, v2, v0

    aput-object v9, v5, v3

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 309
    .end local v3    # "i":I
    .end local v6    # "param":Ljava/lang/reflect/Parameter;
    :cond_41
    array-length v9, v2

    array-length v10, v4

    if-ne v9, v10, :cond_46

    .end local v2    # "genericParamTypes":[Ljava/lang/reflect/Type;
    :goto_45
    return-object v2

    .restart local v2    # "genericParamTypes":[Ljava/lang/reflect/Type;
    :cond_46
    move-object v2, v4

    .line 310
    goto :goto_45

    .line 312
    .restart local v3    # "i":I
    :cond_48
    return-object v5
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-direct {p0, p1}, Ljava/lang/reflect/Executable;->getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotatedElements;->getDirectOrIndirectAnnotationsByType(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getArtMethod()J
    .registers 3

    .prologue
    .line 665
    iget-wide v0, p0, Ljava/lang/reflect/Executable;->artMethod:J

    return-wide v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getDeclaredAnnotationsNative()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method final getDeclaringClassInternal()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Ljava/lang/reflect/Executable;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract getExceptionTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 462
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/Executable$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    .line 461
    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 266
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/Executable$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    .line 265
    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method final native getMethodNameInternal()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method final getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;
    .registers 9

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "signatureAttribute":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 694
    .local v0, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 695
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    instance-of v3, p0, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2a

    .line 696
    invoke-virtual {v1, p0, v2, v0}, Llibcore/reflect/GenericSignatureParser;->parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 700
    :goto_1c
    new-instance v3, Ljava/lang/reflect/Executable$GenericInfo;

    iget-object v4, v1, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    iget-object v5, v1, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    .line 701
    iget-object v6, v1, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    iget-object v7, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 700
    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/reflect/Executable$GenericInfo;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;)V

    return-object v3

    .line 698
    :cond_2a
    invoke-virtual {v1, p0, v2, v0}, Llibcore/reflect/GenericSignatureParser;->parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_1c
.end method

.method final native getMethodReturnTypeInternal()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public abstract getModifiers()I
.end method

.method final getModifiersInternal()I
    .registers 2

    .prologue
    .line 614
    iget v0, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    invoke-static {v0}, Ljava/lang/reflect/Executable;->fixMethodFlags(I)I

    move-result v0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
.end method

.method final getParameterAnnotationsInternal()[[Ljava/lang/annotation/Annotation;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 645
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 646
    .local v0, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_1c

    .line 647
    const-class v1, Ljava/lang/annotation/Annotation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    check-cast v0, [[Ljava/lang/annotation/Annotation;

    .line 649
    .restart local v0    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    :cond_1c
    return-object v0
.end method

.method public getParameterCount()I
    .registers 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method final native getParameterCountInternal()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public abstract getParameterTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method final native getParameterTypesInternal()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public getParameters()[Ljava/lang/reflect/Parameter;
    .registers 2

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->privateGetParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Parameter;

    return-object v0
.end method

.method public abstract getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation
.end method

.method abstract hasGenericInformation()Z
.end method

.method final hasGenericInformationInternal()Z
    .registers 2

    .prologue
    .line 684
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method hasRealParameterData()Z
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Ljava/lang/reflect/Executable;->parameters:[Ljava/lang/reflect/Parameter;

    if-nez v0, :cond_7

    .line 415
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->privateGetParameters()[Ljava/lang/reflect/Parameter;

    .line 417
    :cond_7
    iget-boolean v0, p0, Ljava/lang/reflect/Executable;->hasRealParameterData:Z

    return v0
.end method

.method public final isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-direct {p0, p1}, Ljava/lang/reflect/Executable;->isAnnotationPresentNative(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method final isBridgeMethodInternal()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 738
    iget v1, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final isDefaultMethodInternal()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 733
    iget v1, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public isSynthetic()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 496
    iget v1, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isVarArgs()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 482
    iget v1, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method printModifiersIfNonzero(Ljava/lang/StringBuilder;IZ)V
    .registers 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "mask"    # I
    .param p3, "isDefault"    # Z

    .prologue
    const/16 v3, 0x20

    .line 78
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getModifiers()I

    move-result v2

    and-int v1, v2, p2

    .line 80
    .local v1, "mod":I
    if-eqz v1, :cond_1a

    xor-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_1a

    .line 81
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :cond_19
    :goto_19
    return-void

    .line 83
    :cond_1a
    and-int/lit8 v0, v1, 0x7

    .line 84
    .local v0, "access_mod":I
    if-eqz v0, :cond_29

    .line 85
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_29
    if-eqz p3, :cond_31

    .line 87
    const-string/jumbo v2, "default "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_31
    and-int/lit8 v1, v1, -0x8

    .line 89
    if-eqz v1, :cond_19

    .line 90
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method separateWithCommas([Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .registers 5
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 70
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_18

    .line 72
    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_1b
    return-void
.end method

.method sharedToGenericString(IZ)Ljava/lang/String;
    .registers 16
    .param p1, "modifierMask"    # I
    .param p2, "isDefault"    # Z

    .prologue
    const/4 v10, 0x0

    .line 125
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v7, p1, p2}, Ljava/lang/reflect/Executable;->printModifiersIfNonzero(Ljava/lang/StringBuilder;IZ)V

    .line 129
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v9

    .line 130
    .local v9, "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v11, v9

    if-lez v11, :cond_33

    .line 131
    const/4 v2, 0x1

    .line 132
    .local v2, "first":Z
    const/16 v11, 0x3c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    array-length v11, v9

    :goto_17
    if-ge v10, v11, :cond_2d

    aget-object v8, v9, v10

    .line 134
    .local v8, "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v2, :cond_22

    .line 135
    const/16 v12, 0x2c

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_22
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/4 v2, 0x0

    .line 133
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 141
    .end local v8    # "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2d
    const-string/jumbo v10, "> "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .end local v2    # "first":Z
    :cond_33
    invoke-virtual {p0, v7}, Ljava/lang/reflect/Executable;->specificToGenericStringHeader(Ljava/lang/StringBuilder;)V

    .line 146
    const/16 v10, 0x28

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 148
    .local v6, "params":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_40
    array-length v10, v6

    if-ge v3, v10, :cond_6e

    .line 149
    aget-object v10, v6, v3

    invoke-interface {v10}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "param":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->isVarArgs()Z

    move-result v10

    if-eqz v10, :cond_5e

    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ne v3, v10, :cond_5e

    .line 151
    const-string/jumbo v10, "\\[\\]$"

    const-string/jumbo v11, "..."

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    :cond_5e
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_6b

    .line 154
    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 156
    .end local v5    # "param":Ljava/lang/String;
    :cond_6e
    const/16 v10, 0x29

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 158
    .local v1, "exceptions":[Ljava/lang/reflect/Type;
    array-length v10, v1

    if-lez v10, :cond_a9

    .line 159
    const-string/jumbo v10, " throws "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_81
    array-length v10, v1

    if-ge v4, v10, :cond_a9

    .line 161
    aget-object v10, v1, v4

    instance-of v10, v10, Ljava/lang/Class;

    if-eqz v10, :cond_a2

    .line 162
    aget-object v10, v1, v4

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 161
    :goto_92
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    if-ge v4, v10, :cond_9f

    .line 165
    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    :cond_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 163
    :cond_a2
    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_92

    .line 168
    .end local v4    # "k":I
    :cond_a9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_ac} :catch_ae

    move-result-object v10

    return-object v10

    .line 169
    .end local v1    # "exceptions":[Ljava/lang/reflect/Type;
    .end local v3    # "j":I
    .end local v6    # "params":[Ljava/lang/reflect/Type;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :catch_ae
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method sharedToString(IZ[Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;
    .registers 9
    .param p1, "modifierMask"    # I
    .param p2, "isDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p4, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1, p1, p2}, Ljava/lang/reflect/Executable;->printModifiersIfNonzero(Ljava/lang/StringBuilder;IZ)V

    .line 102
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Executable;->specificToStringHeader(Ljava/lang/StringBuilder;)V

    .line 104
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0, p3, v1}, Ljava/lang/reflect/Executable;->separateWithCommas([Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 106
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    array-length v2, p4

    if-lez v2, :cond_24

    .line 108
    const-string/jumbo v2, " throws "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0, p4, v1}, Ljava/lang/reflect/Executable;->separateWithCommas([Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 111
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_29

    move-result-object v2

    return-object v2

    .line 112
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_29
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method abstract specificToGenericStringHeader(Ljava/lang/StringBuilder;)V
.end method

.method abstract specificToStringHeader(Ljava/lang/StringBuilder;)V
.end method

.method public abstract toGenericString()Ljava/lang/String;
.end method
