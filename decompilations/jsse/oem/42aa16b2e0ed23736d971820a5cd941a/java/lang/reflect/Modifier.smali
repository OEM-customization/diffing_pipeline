.class public Ljava/lang/reflect/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# static fields
.field public static final whitelist core-platform-api test-api ABSTRACT:I = 0x400

.field static final greylist-max-o ACCESS_MODIFIERS:I = 0x7

.field static final greylist-max-o ANNOTATION:I = 0x2000

.field static final greylist-max-o BRIDGE:I = 0x40

.field private static final greylist-max-o CLASS_MODIFIERS:I = 0xc1f

.field public static final greylist-max-o CONSTRUCTOR:I = 0x10000

.field private static final greylist-max-o CONSTRUCTOR_MODIFIERS:I = 0x7

.field public static final greylist-max-o DEFAULT:I = 0x400000

.field static final greylist-max-o ENUM:I = 0x4000

.field private static final greylist-max-o FIELD_MODIFIERS:I = 0xdf

.field public static final whitelist core-platform-api test-api FINAL:I = 0x10

.field public static final whitelist core-platform-api test-api INTERFACE:I = 0x200

.field private static final greylist-max-o INTERFACE_MODIFIERS:I = 0xc0f

.field static final greylist-max-o MANDATED:I = 0x8000

.field private static final greylist-max-o METHOD_MODIFIERS:I = 0xd3f

.field public static final whitelist core-platform-api test-api NATIVE:I = 0x100

.field private static final greylist-max-o PARAMETER_MODIFIERS:I = 0x10

.field public static final whitelist core-platform-api test-api PRIVATE:I = 0x2

.field public static final whitelist core-platform-api test-api PROTECTED:I = 0x4

.field public static final whitelist core-platform-api test-api PUBLIC:I = 0x1

.field public static final whitelist core-platform-api test-api STATIC:I = 0x8

.field public static final whitelist core-platform-api test-api STRICT:I = 0x800

.field public static final whitelist core-platform-api test-api SYNCHRONIZED:I = 0x20

.field public static final greylist-max-o SYNTHETIC:I = 0x1000

.field public static final whitelist core-platform-api test-api TRANSIENT:I = 0x80

.field static final greylist-max-o VARARGS:I = 0x80

.field public static final whitelist core-platform-api test-api VOLATILE:I = 0x40


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist core-platform-api test-api classModifiers()I
    .registers 1

    .line 460
    const/16 v0, 0xc1f

    return v0
.end method

.method public static whitelist core-platform-api test-api constructorModifiers()I
    .registers 1

    .line 486
    const/4 v0, 0x7

    return v0
.end method

.method public static whitelist core-platform-api test-api fieldModifiers()I
    .registers 1

    .line 512
    const/16 v0, 0xdf

    return v0
.end method

.method public static whitelist core-platform-api test-api interfaceModifiers()I
    .registers 1

    .line 473
    const/16 v0, 0xc0f

    return v0
.end method

.method public static whitelist core-platform-api test-api isAbstract(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 197
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static greylist-max-o isConstructor(I)Z
    .registers 2
    .param p0, "modifiers"    # I

    .line 149
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static whitelist core-platform-api test-api isFinal(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 116
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isInterface(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 185
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static greylist-max-o isMandated(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 363
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static whitelist core-platform-api test-api isNative(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 173
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isPrivate(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 80
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isProtected(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 92
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isPublic(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 68
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isStatic(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 104
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isStrict(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 209
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isSynchronized(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 128
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static greylist-max-o isSynthetic(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 359
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isTransient(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 161
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isVolatile(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 140
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api methodModifiers()I
    .registers 1

    .line 499
    const/16 v0, 0xd3f

    return v0
.end method

.method public static whitelist core-platform-api test-api parameterModifiers()I
    .registers 1

    .line 525
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist core-platform-api test-api toString(I)Ljava/lang/String;
    .registers 6
    .param p0, "mod"    # I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_e
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_17

    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_17
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_20

    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_20
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_29

    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_29
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_32

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_32
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3b

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_3b
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_44

    const-string v1, "transient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_44
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_4d

    const-string v1, "volatile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_4d
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_56

    const-string v1, "synchronized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_56
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5f

    const-string v1, "native "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_5f
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_68

    const-string v1, "strictfp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_68
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_71

    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    move v2, v1

    .local v2, "len":I
    if-lez v1, :cond_84

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 264
    :cond_84
    const-string v1, ""

    return-object v1
.end method
