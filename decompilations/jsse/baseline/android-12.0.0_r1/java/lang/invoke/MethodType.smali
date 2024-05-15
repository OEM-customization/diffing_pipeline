.class public final Ljava/lang/invoke/MethodType;
.super Ljava/lang/Object;
.source "MethodType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o MAX_JVM_ARITY:I = 0xff

.field static final greylist-max-o MAX_MH_ARITY:I = 0xfe

.field static final greylist-max-o MAX_MH_INVOKER_ARITY:I = 0xfd

.field static final greylist-max-o NO_PTYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final greylist-max-o internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet<",
            "Ljava/lang/invoke/MethodType;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o objectOnlyTypes:[Ljava/lang/invoke/MethodType;

.field private static final greylist-max-o ptypesOffset:J

.field private static final greylist-max-o rtypeOffset:J

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x124L


# instance fields
.field private greylist-max-o form:Ljava/lang/invoke/MethodTypeForm;
    .annotation runtime Ljava/lang/invoke/Stable;
    .end annotation
.end field

.field private greylist-max-o methodDescriptor:Ljava/lang/String;
    .annotation runtime Ljava/lang/invoke/Stable;
    .end annotation
.end field

.field private final greylist-max-o ptypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o rtype:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o wrapAlt:Ljava/lang/invoke/MethodType;
    .annotation runtime Ljava/lang/invoke/Stable;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 89
    const-class v0, Ljava/lang/invoke/MethodType;

    .line 197
    new-instance v1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    invoke-direct {v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;-><init>()V

    sput-object v1, Ljava/lang/invoke/MethodType;->internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    .line 199
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    sput-object v2, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    .line 317
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/invoke/MethodType;

    sput-object v2, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    .line 1128
    new-array v1, v1, [Ljava/io/ObjectStreamField;

    sput-object v1, Ljava/lang/invoke/MethodType;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1206
    :try_start_18
    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "rtype"

    .line 1207
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/lang/invoke/MethodType;->rtypeOffset:J

    .line 1208
    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "ptypes"

    .line 1209
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/invoke/MethodType;->ptypesOffset:J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_34} :catch_36

    .line 1212
    nop

    .line 1213
    return-void

    .line 1210
    :catch_36
    move-exception v0

    .line 1211
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    .line 1191
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 1192
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Class;[Ljava/lang/Class;Z)V
    .registers 5
    .param p3, "trusted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 108
    .local p1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    .line 110
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    .line 111
    iput-object p1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    .line 113
    if-eqz p3, :cond_f

    move-object v0, p2

    goto :goto_16

    :cond_f
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    :goto_16
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 114
    return-void
.end method

.method private constructor greylist-max-o <init>([Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 121
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    .line 123
    iput-object p1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 124
    return-void
.end method

.method private greylist-max-o MethodType_init(Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1196
    .local p1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    .line 1197
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    .line 1198
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/lang/invoke/MethodType;->rtypeOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1199
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/lang/invoke/MethodType;->ptypesOffset:J

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1200
    return-void
.end method

.method static greylist-max-o canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 939
    .local p0, "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-eq p0, p1, :cond_61

    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_61

    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_c

    goto :goto_61

    .line 941
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 944
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_17

    return v0

    .line 945
    :cond_17
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 946
    .local v0, "sw":Lsun/invoke/util/Wrapper;
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 948
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v1

    return v1

    .line 951
    :cond_2a
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->wrapperType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    return v1

    .line 953
    .end local v0    # "sw":Lsun/invoke/util/Wrapper;
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 955
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3e

    return v0

    .line 956
    :cond_3e
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    .line 963
    .local v1, "dw":Lsun/invoke/util/Wrapper;
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->wrapperType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 964
    return v0

    .line 970
    :cond_4d
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->isWrapperType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 971
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 973
    return v0

    .line 982
    :cond_5e
    const/4 v0, 0x0

    return v0

    .line 985
    .end local v1    # "dw":Lsun/invoke/util/Wrapper;
    :cond_60
    return v0

    .line 939
    :cond_61
    :goto_61
    return v0
.end method

.method private greylist-max-o canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 928
    .local p1, "srcTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "dstTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 929
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 930
    const/4 v1, 0x0

    return v1

    .line 928
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 933
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o checkPtype(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 170
    .local p0, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_8

    .line 173
    return-void

    .line 172
    :cond_8
    const-string v0, "parameter type cannot be void"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static greylist-max-o checkPtypes([Ljava/lang/Class;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 176
    .local p0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 177
    .local v0, "slots":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_17

    aget-object v3, p0, v2

    .line 178
    .local v3, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->checkPtype(Ljava/lang/Class;)V

    .line 179
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_12

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_14

    .line 180
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 177
    .end local v3    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 183
    :cond_17
    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 184
    return v0
.end method

.method private static greylist-max-o checkRtype(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 167
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method static greylist-max-o checkSlotCount(I)V
    .registers 3
    .param p0, "count"    # I

    .line 189
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_5

    .line 191
    return-void

    .line 190
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad parameter count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private greylist-max-o equals(Ljava/lang/invoke/MethodType;)Z
    .registers 4
    .param p1, "that"    # Ljava/lang/invoke/MethodType;

    .line 768
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 769
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 768
    :goto_13
    return v0
.end method

.method private static greylist-max-o explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 913
    .local p0, "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-eq p0, p1, :cond_2e

    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_2e

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_c

    goto :goto_2e

    .line 914
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 917
    invoke-static {p0, p1}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 918
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 920
    return v2

    .line 923
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :cond_2d
    :goto_2d
    return v0

    .line 913
    :cond_2e
    :goto_2e
    return v0
.end method

.method public static whitelist test-api fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/TypeNotPresentException;
        }
    .end annotation

    .line 1086
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x29

    .line 1087
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_38

    const/16 v0, 0x2e

    .line 1088
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_38

    .line 1090
    invoke-static {p0, p1}, Lsun/invoke/util/BytecodeDescriptor;->parseMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    .line 1091
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1092
    .local v1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 1093
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v3

    .line 1094
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v1, v3, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 1089
    .end local v0    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v1    # "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not a method descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api genericMethodType(I)Ljava/lang/invoke/MethodType;
    .registers 2
    .param p0, "objectArgCount"    # I

    .line 361
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/invoke/MethodType;->genericMethodType(IZ)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api genericMethodType(IZ)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p0, "objectArgCount"    # I
    .param p1, "finalArray"    # Z

    .line 333
    invoke-static {p0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 334
    move v0, p1

    .line 335
    .local v0, "ivarargs":I
    mul-int/lit8 v1, p0, 0x2

    add-int/2addr v1, v0

    .line 336
    .local v1, "ootIndex":I
    sget-object v2, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 337
    aget-object v3, v2, v1

    .line 338
    .local v3, "mt":Ljava/lang/invoke/MethodType;
    if-eqz v3, :cond_11

    return-object v3

    .line 340
    .end local v3    # "mt":Ljava/lang/invoke/MethodType;
    :cond_11
    add-int v3, p0, v0

    new-array v3, v3, [Ljava/lang/Class;

    .line 341
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    if-eqz v0, :cond_20

    const-class v4, [Ljava/lang/Object;

    aput-object v4, v3, p0

    .line 343
    :cond_20
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 344
    .local v4, "mt":Ljava/lang/invoke/MethodType;
    array-length v5, v2

    if-ge v1, v5, :cond_2c

    .line 345
    aput-object v4, v2, v1

    .line 347
    :cond_2c
    return-object v4
.end method

.method private static greylist-max-o listToArray(Ljava/util/List;)[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 231
    .local p0, "ptypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 232
    sget-object v0, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method static greylist-max-o makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p2, "trusted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 306
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/invoke/MethodType;->internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    new-instance v1, Ljava/lang/invoke/MethodType;

    invoke-direct {v1, p1, p0}, Ljava/lang/invoke/MethodType;-><init>([Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType;

    .line 307
    .local v1, "mt":Ljava/lang/invoke/MethodType;
    if-eqz v1, :cond_10

    .line 308
    return-object v1

    .line 309
    :cond_10
    array-length v2, p1

    if-nez v2, :cond_16

    .line 310
    sget-object p1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    const/4 p2, 0x1

    .line 312
    :cond_16
    new-instance v2, Ljava/lang/invoke/MethodType;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/invoke/MethodType;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Z)V

    move-object v1, v2

    .line 314
    invoke-static {v1}, Ljava/lang/invoke/MethodTypeForm;->findForm(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodTypeForm;

    move-result-object v2

    iput-object v2, v1, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 264
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 279
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptype0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 248
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptype0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Class;

    .line 249
    .local v0, "ptypes1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 250
    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 4
    .param p1, "ptypes"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 294
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 225
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x0

    .line 226
    .local v0, "notrust":Z
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 211
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;
    .registers 3
    .param p0, "num"    # Ljava/lang/Object;

    .line 193
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1171
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1173
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1174
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 1178
    .local v1, "parameterArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    .line 1179
    invoke-static {v1}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    .line 1181
    invoke-virtual {v1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    .line 1182
    invoke-direct {p0, v0, v1}, Ljava/lang/invoke/MethodType;->MethodType_init(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1183
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 3

    .line 1224
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o toFieldDescriptorString(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1120
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o unwrapWithNoPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 3
    .param p0, "wt"    # Ljava/lang/invoke/MethodType;

    .line 696
    nop

    .line 697
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 698
    .local v0, "uwt":Ljava/lang/invoke/MethodType;
    if-nez v0, :cond_f

    .line 700
    const/4 v1, 0x3

    invoke-static {p0, v1, v1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 701
    if-nez v0, :cond_d

    .line 702
    move-object v0, p0

    .line 703
    :cond_d
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 705
    :cond_f
    return-object v0
.end method

.method private static greylist-max-o wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 3
    .param p0, "pt"    # Ljava/lang/invoke/MethodType;

    .line 684
    nop

    .line 685
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 686
    .local v0, "wt":Ljava/lang/invoke/MethodType;
    if-nez v0, :cond_d

    .line 688
    const/4 v1, 0x2

    invoke-static {p0, v1, v1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 689
    nop

    .line 690
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 692
    :cond_d
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1152
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1153
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1154
    return-void
.end method


# virtual methods
.method public whitelist test-api appendParameterTypes(Ljava/util/List;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 445
    .local p1, "ptypesToInsert":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api appendParameterTypes([Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 417
    .local p1, "ptypesToInsert":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o asCollectorType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 523
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 524
    nop

    .line 526
    const-class v0, [Ljava/lang/Object;

    if-ne p1, v0, :cond_15

    .line 527
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 528
    .local v0, "res":Ljava/lang/invoke/MethodType;
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_25

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    goto :goto_25

    .line 532
    .end local v0    # "res":Ljava/lang/invoke/MethodType;
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 533
    .local v0, "elemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 534
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {p2, v0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    move-object v0, v1

    .line 536
    .local v0, "res":Ljava/lang/invoke/MethodType;
    :cond_25
    :goto_25
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 537
    return-object v0

    .line 539
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v3, v3

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o asSpreaderType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 480
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 481
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    sub-int/2addr v0, p2

    .line 482
    .local v0, "spreadPos":I
    if-nez p2, :cond_8

    return-object p0

    .line 483
    :cond_8
    const-class v1, [Ljava/lang/Object;

    if-ne p1, v1, :cond_24

    .line 484
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_13

    return-object p0

    .line 485
    :cond_13
    if-nez v0, :cond_24

    .line 487
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 488
    .local v1, "res":Ljava/lang/invoke/MethodType;
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_23

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 491
    :cond_23
    return-object v1

    .line 494
    .end local v1    # "res":Ljava/lang/invoke/MethodType;
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 495
    .local v1, "elemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 496
    move v2, v0

    .local v2, "i":I
    :goto_2a
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 497
    aget-object v4, v3, v2

    if-eq v4, v1, :cond_46

    .line 498
    invoke-virtual {v3}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 499
    .local v3, "fixedPtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v4, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v4, v4

    invoke-static {v3, v2, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 500
    iget-object v4, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    .line 496
    .end local v3    # "fixedPtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 503
    .end local v2    # "i":I
    :cond_49
    return-object p0
.end method

.method public whitelist test-api changeParameterType(ILjava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 375
    .local p2, "nptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_7

    return-object p0

    .line 376
    :cond_7
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtype(Ljava/lang/Class;)V

    .line 377
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 378
    .local v0, "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aput-object p2, v0, p1

    .line 379
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 588
    .local p1, "nrtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_7

    return-object p0

    .line 589
    :cond_7
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dropParameterTypes(II)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 554
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v0

    .line 555
    .local v1, "len":I
    if-ltz p1, :cond_3b

    if-gt p1, p2, :cond_3b

    if-gt p2, v1, :cond_3b

    .line 557
    if-ne p1, p2, :cond_c

    return-object p0

    .line 559
    :cond_c
    if-nez p1, :cond_1a

    .line 560
    if-ne p2, v1, :cond_13

    .line 562
    sget-object v0, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    .local v0, "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_33

    .line 565
    .end local v0    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_13
    invoke-static {v0, p2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .restart local v0    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_33

    .line 568
    .end local v0    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1a
    const/4 v2, 0x0

    if-ne p2, v1, :cond_24

    .line 570
    invoke-static {v0, v2, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .restart local v0    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_33

    .line 572
    .end local v0    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_24
    sub-int v3, v1, p2

    .line 573
    .local v3, "tail":I
    add-int v4, p1, v3

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 574
    .restart local v0    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v2, p2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    .end local v3    # "tail":I
    :goto_33
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 556
    .end local v0    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x"    # Ljava/lang/Object;

    .line 764
    if-eq p0, p1, :cond_12

    instance-of v0, p1, Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Ljava/lang/invoke/MethodType;

    invoke-direct {p0, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/invoke/MethodType;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public whitelist test-api erase()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 619
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->erasedType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o explicitCastEquivalentToAsType(Ljava/lang/invoke/MethodType;)Z
    .registers 9
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 879
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 880
    :cond_4
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v2, p1, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 881
    return v2

    .line 883
    :cond_10
    iget-object v1, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 884
    .local v1, "srcTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 885
    .local v3, "dstTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ne v3, v1, :cond_17

    .line 886
    return v0

    .line 888
    :cond_17
    nop

    .line 889
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v3

    if-ge v4, v5, :cond_2a

    .line 890
    aget-object v5, v1, v4

    aget-object v6, v3, v4

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 891
    return v2

    .line 889
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 894
    .end local v4    # "i":I
    :cond_2a
    return v0
.end method

.method greylist-max-o form()Ljava/lang/invoke/MethodTypeForm;
    .registers 2

    .line 126
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    return-object v0
.end method

.method public whitelist test-api generic()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 651
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hasPrimitives()Z
    .registers 2

    .line 598
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->hasPrimitives()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasWrappers()Z
    .registers 2

    .line 609
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->unwrap()Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-eq v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 784
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 785
    .local v0, "hashCode":I
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 786
    .local v4, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 785
    .end local v4    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 787
    :cond_1b
    return v0
.end method

.method public whitelist test-api insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;
    .registers 4
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 432
    .local p2, "ptypesToInsert":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 10
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 394
    .local p2, "ptypesToInsert":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    .line 395
    .local v0, "len":I
    if-ltz p1, :cond_36

    if-gt p1, v0, :cond_36

    .line 397
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    move-result v1

    .line 398
    .local v1, "ins":I
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterSlotCount()I

    move-result v2

    array-length v3, p2

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 399
    array-length v2, p2

    .line 400
    .local v2, "ilen":I
    if-nez v2, :cond_19

    return-object p0

    .line 401
    :cond_19
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int v4, v0, v2

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 402
    .local v3, "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    add-int v4, p1, v2

    sub-int v6, v0, p1

    invoke-static {v3, p1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    invoke-static {p2, v5, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v4, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    .line 396
    .end local v1    # "ins":I
    .end local v2    # "ilen":I
    .end local v3    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o isConvertibleTo(Ljava/lang/invoke/MethodType;)Z
    .registers 11
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 845
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v0

    .line 846
    .local v0, "oldForm":Ljava/lang/invoke/MethodTypeForm;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v1

    .line 847
    .local v1, "newForm":Ljava/lang/invoke/MethodTypeForm;
    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 849
    return v2

    .line 850
    :cond_c
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1c

    .line 851
    return v4

    .line 852
    :cond_1c
    iget-object v3, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 853
    .local v3, "srcTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 854
    .local v5, "dstTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ne v3, v5, :cond_23

    .line 855
    return v2

    .line 857
    :cond_23
    array-length v6, v3

    move v7, v6

    .local v7, "argc":I
    array-length v8, v5

    if-eq v6, v8, :cond_29

    .line 858
    return v4

    .line 859
    :cond_29
    if-gt v7, v2, :cond_39

    .line 860
    if-ne v7, v2, :cond_38

    aget-object v6, v3, v4

    aget-object v8, v5, v4

    invoke-static {v6, v8}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 861
    return v4

    .line 862
    :cond_38
    return v2

    .line 864
    :cond_39
    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->primitiveParameterCount()I

    move-result v4

    if-nez v4, :cond_43

    iget-object v4, v0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    if-eq v4, p0, :cond_4d

    .line 865
    :cond_43
    invoke-virtual {v1}, Ljava/lang/invoke/MethodTypeForm;->primitiveParameterCount()I

    move-result v4

    if-nez v4, :cond_4f

    iget-object v4, v1, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    if-ne v4, p1, :cond_4f

    .line 868
    :cond_4d
    nop

    .line 869
    return v2

    .line 871
    :cond_4f
    invoke-direct {p0, v3, v5}, Ljava/lang/invoke/MethodType;->canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v2

    return v2
.end method

.method greylist-max-o isGeneric()Z
    .registers 2

    .line 655
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->erase()Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-ne p0, v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method greylist-max-o lastParameterType()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v0

    .line 743
    .local v1, "len":I
    if-nez v1, :cond_8

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_c

    :cond_8
    add-int/lit8 v2, v1, -0x1

    aget-object v0, v0, v2

    :goto_c
    return-object v0
.end method

.method greylist-max-o leadingReferenceParameter()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v0

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v1, v0

    .line 512
    .local v1, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_10

    .line 514
    return-object v1

    .line 513
    .end local v1    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    const-string v0, "no leading reference parameter"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api parameterArray()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api parameterCount()I
    .registers 2

    .line 722
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api parameterList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o parameterSlotCount()I
    .registers 2

    .line 1002
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->parameterSlotCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api parameterType(I)Ljava/lang/Class;
    .registers 3
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 715
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public greylist-max-o ptypes()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    return-object v0
.end method

.method varargs blacklist replaceParameterTypes(II[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 463
    .local p3, "ptypesToInsert":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ne p1, p2, :cond_7

    .line 464
    invoke-virtual {p0, p1, p3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0

    .line 465
    :cond_7
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    .line 466
    .local v0, "len":I
    if-ltz p1, :cond_21

    if-gt p1, p2, :cond_21

    if-gt p2, v0, :cond_21

    .line 468
    array-length v1, p3

    .line 469
    .local v1, "ilen":I
    if-nez v1, :cond_18

    .line 470
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 471
    :cond_18
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 467
    .end local v1    # "ilen":I
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api returnType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    return-object v0
.end method

.method public greylist-max-o rtype()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api toMethodDescriptorString()Ljava/lang/String;
    .registers 2

    .line 1111
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->methodDescriptor:Ljava/lang/String;

    .line 1112
    .local v0, "desc":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1113
    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->methodDescriptor:Ljava/lang/String;

    .line 1116
    :cond_a
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v1, v2, :cond_25

    .line 805
    if-lez v1, :cond_17

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    :cond_17
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 808
    .end local v1    # "i":I
    :cond_25
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api unwrap()Ljava/lang/invoke/MethodType;
    .registers 3

    .line 679
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p0

    goto :goto_c

    :cond_8
    invoke-static {p0}, Ljava/lang/invoke/MethodType;->wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 680
    .local v0, "noprims":Ljava/lang/invoke/MethodType;
    :goto_c
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->unwrapWithNoPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api wrap()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 668
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Ljava/lang/invoke/MethodType;->wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p0

    :goto_c
    return-object v0
.end method
