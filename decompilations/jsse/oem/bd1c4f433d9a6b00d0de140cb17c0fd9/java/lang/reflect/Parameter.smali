.class public final Ljava/lang/reflect/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# instance fields
.field private final executable:Ljava/lang/reflect/Executable;

.field private final index:I

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private volatile transient parameterClassCache:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile transient parameterTypeCache:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/reflect/Executable;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p3, "executable"    # Ljava/lang/reflect/Executable;
    .param p4, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterTypeCache:Ljava/lang/reflect/Type;

    .line 227
    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterClassCache:Ljava/lang/Class;

    .line 67
    iput-object p1, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    .line 68
    iput p2, p0, Ljava/lang/reflect/Parameter;->modifiers:I

    .line 69
    iput-object p3, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    .line 70
    iput p4, p0, Ljava/lang/reflect/Parameter;->index:I

    .line 71
    return-void
.end method

.method private static native getAnnotationNative(Ljava/lang/reflect/Executable;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Executable;",
            "I",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 80
    instance-of v2, p1, Ljava/lang/reflect/Parameter;

    if-eqz v2, :cond_1a

    move-object v0, p1

    .line 81
    check-cast v0, Ljava/lang/reflect/Parameter;

    .line 82
    .local v0, "other":Ljava/lang/reflect/Parameter;
    iget-object v2, v0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    iget-object v3, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Executable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 83
    iget v2, v0, Ljava/lang/reflect/Parameter;->index:I

    iget v3, p0, Ljava/lang/reflect/Parameter;->index:I

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    .line 82
    :cond_19
    return v1

    .line 85
    .end local v0    # "other":Ljava/lang/reflect/Parameter;
    :cond_1a
    return v1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
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
    .line 273
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Parameter;->getAnnotationNative(Ljava/lang/reflect/Executable;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

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
    .line 288
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotatedElements;->getDirectOrIndirectAnnotationsByType(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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
    .line 305
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Parameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
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
    .line 316
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Parameter;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringExecutable()Ljava/lang/reflect/Executable;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    return-object v0
.end method

.method public getModifiers()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Ljava/lang/reflect/Parameter;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 180
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "arg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_26
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterizedType()Ljava/lang/reflect/Type;
    .registers 4

    .prologue
    .line 199
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->parameterTypeCache:Ljava/lang/reflect/Type;

    .line 200
    .local v0, "tmp":Ljava/lang/reflect/Type;
    if-nez v0, :cond_10

    .line 201
    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->getAllGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    iget v2, p0, Ljava/lang/reflect/Parameter;->index:I

    aget-object v0, v1, v2

    .line 202
    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterTypeCache:Ljava/lang/reflect/Type;

    .line 205
    :cond_10
    return-object v0
.end method

.method getRealName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->parameterClassCache:Ljava/lang/Class;

    .line 220
    .local v0, "tmp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_10

    .line 221
    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Ljava/lang/reflect/Parameter;->index:I

    aget-object v0, v1, v2

    .line 222
    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterClassCache:Ljava/lang/Class;

    .line 224
    :cond_10
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isImplicit()Z
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isMandated(I)Z

    move-result v0

    return v0
.end method

.method public isNamePresent()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 107
    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->hasRealParameterData()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isSynthetic()Z
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynthetic(I)Z

    move-result v0

    return v0
.end method

.method public isVarArgs()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 263
    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 264
    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    iget-object v2, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v2}, Ljava/lang/reflect/Executable;->getParameterCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    .line 263
    :cond_16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x20

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getParameterizedType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 126
    .local v1, "type":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "typename":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v3, p0, Ljava/lang/reflect/Parameter;->modifiers:I

    if-eqz v3, :cond_21

    .line 131
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    :cond_21
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->isVarArgs()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 134
    const-string/jumbo v3, "\\[\\]$"

    const-string/jumbo v4, "..."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :goto_34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 136
    :cond_43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34
.end method
