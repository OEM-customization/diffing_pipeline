.class public interface abstract Ljava/lang/invoke/MethodHandleInfo;
.super Ljava/lang/Object;
.source "MethodHandleInfo.java"


# static fields
.field public static final whitelist core-platform-api test-api REF_getField:I = 0x1

.field public static final whitelist core-platform-api test-api REF_getStatic:I = 0x2

.field public static final whitelist core-platform-api test-api REF_invokeInterface:I = 0x9

.field public static final whitelist core-platform-api test-api REF_invokeSpecial:I = 0x7

.field public static final whitelist core-platform-api test-api REF_invokeStatic:I = 0x6

.field public static final whitelist core-platform-api test-api REF_invokeVirtual:I = 0x5

.field public static final whitelist core-platform-api test-api REF_newInvokeSpecial:I = 0x8

.field public static final whitelist core-platform-api test-api REF_putField:I = 0x3

.field public static final whitelist core-platform-api test-api REF_putStatic:I = 0x4


# direct methods
.method public static whitelist core-platform-api test-api refKindIsField(I)Z
    .registers 2
    .param p0, "refKind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    int-to-byte v0, p0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleNatives;->refKindIsField(B)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api refKindIsValid(I)Z
    .registers 2
    .param p0, "refKind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    invoke-static {p0}, Ljava/lang/invoke/MethodHandleNatives;->refKindIsValid(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api refKindName(I)Ljava/lang/String;
    .registers 2
    .param p0, "refKind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    int-to-byte v0, p0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleNatives;->refKindName(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api referenceKindToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "referenceKind"    # I

    .line 245
    invoke-static {p0}, Ljava/lang/invoke/MethodHandleNatives;->refKindIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    int-to-byte v0, p0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleNatives;->refKindName(B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "invalid reference kind"

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api toString(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/String;
    .registers 7
    .param p0, "kind"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 281
    .local p1, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/invoke/MethodHandleInfo;->referenceKindToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const-string v1, "%s %s.%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getMethodType()Ljava/lang/invoke/MethodType;
.end method

.method public abstract whitelist core-platform-api test-api getModifiers()I
.end method

.method public abstract whitelist core-platform-api test-api getName()Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api getReferenceKind()I
.end method

.method public whitelist core-platform-api test-api isVarArgs()Z
    .registers 3

    .line 227
    invoke-interface {p0}, Ljava/lang/invoke/MethodHandleInfo;->getReferenceKind()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleNatives;->refKindIsField(B)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 228
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_d
    const/16 v0, 0x80

    .line 232
    .local v0, "ACC_VARARGS":I
    invoke-interface {p0}, Ljava/lang/invoke/MethodHandleInfo;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    return v1
.end method

.method public abstract whitelist core-platform-api test-api reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")TT;"
        }
    .end annotation
.end method
