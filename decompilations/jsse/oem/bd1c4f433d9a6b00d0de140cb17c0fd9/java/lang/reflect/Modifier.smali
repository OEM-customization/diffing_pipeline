.class public Ljava/lang/reflect/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# static fields
.field public static final ABSTRACT:I = 0x400

.field static final ACCESS_MODIFIERS:I = 0x7

.field static final ANNOTATION:I = 0x2000

.field static final BRIDGE:I = 0x40

.field private static final CLASS_MODIFIERS:I = 0xc1f

.field public static final CONSTRUCTOR:I = 0x10000

.field private static final CONSTRUCTOR_MODIFIERS:I = 0x7

.field public static final DEFAULT:I = 0x400000

.field static final ENUM:I = 0x4000

.field private static final FIELD_MODIFIERS:I = 0xdf

.field public static final FINAL:I = 0x10

.field public static final INTERFACE:I = 0x200

.field private static final INTERFACE_MODIFIERS:I = 0xc0f

.field static final MANDATED:I = 0x8000

.field private static final METHOD_MODIFIERS:I = 0xd3f

.field public static final NATIVE:I = 0x100

.field private static final PARAMETER_MODIFIERS:I = 0x10

.field public static final PRIVATE:I = 0x2

.field public static final PROTECTED:I = 0x4

.field public static final PUBLIC:I = 0x1

.field public static final STATIC:I = 0x8

.field public static final STRICT:I = 0x800

.field public static final SYNCHRONIZED:I = 0x20

.field public static final SYNTHETIC:I = 0x1000

.field public static final TRANSIENT:I = 0x80

.field static final VARARGS:I = 0x80

.field public static final VOLATILE:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classModifiers()I
    .registers 1

    .prologue
    .line 442
    const/16 v0, 0xc1f

    return v0
.end method

.method public static constructorModifiers()I
    .registers 1

    .prologue
    .line 468
    const/4 v0, 0x7

    return v0
.end method

.method public static fieldModifiers()I
    .registers 1

    .prologue
    .line 494
    const/16 v0, 0xdf

    return v0
.end method

.method public static interfaceModifiers()I
    .registers 1

    .prologue
    .line 455
    const/16 v0, 0xc0f

    return v0
.end method

.method public static isAbstract(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 182
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isConstructor(I)Z
    .registers 3
    .param p0, "modifiers"    # I

    .prologue
    const/4 v0, 0x0

    .line 134
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public static isFinal(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 102
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isInterface(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 170
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method static isMandated(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 347
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static isNative(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 158
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isPrivate(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 66
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isProtected(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 78
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isPublic(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isStatic(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 90
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isStrict(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 194
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isSynchronized(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 114
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method static isSynthetic(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 343
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isTransient(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 146
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isVolatile(I)Z
    .registers 3
    .param p0, "mod"    # I

    .prologue
    const/4 v0, 0x0

    .line 126
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static methodModifiers()I
    .registers 1

    .prologue
    .line 481
    const/16 v0, 0xd3f

    return v0
.end method

.method public static parameterModifiers()I
    .registers 1

    .prologue
    .line 507
    const/16 v0, 0x10

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 6
    .param p0, "mod"    # I

    .prologue
    const/4 v4, 0x0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v1, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_10

    const-string/jumbo v2, "public "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_10
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "protected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_1a
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_24

    const-string/jumbo v2, "private "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_24
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "abstract "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_2e
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_38

    const-string/jumbo v2, "static "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_38
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_42

    const-string/jumbo v2, "final "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_42
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_4c

    const-string/jumbo v2, "transient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_4c
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_56

    const-string/jumbo v2, "volatile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_56
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_60

    const-string/jumbo v2, "synchronized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_60
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_6a
    and-int/lit16 v2, p0, 0x800

    if-eqz v2, :cond_74

    const-string/jumbo v2, "strictfp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_74
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_7e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_8f

    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 249
    :cond_8f
    const-string/jumbo v2, ""

    return-object v2
.end method
