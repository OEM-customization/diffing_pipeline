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
.field static final synthetic -assertionsDisabled:Z

.field static final MAX_JVM_ARITY:I = 0xff

.field static final MAX_MH_ARITY:I = 0xfe

.field static final MAX_MH_INVOKER_ARITY:I = 0xfd

.field static final NO_PTYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet",
            "<",
            "Ljava/lang/invoke/MethodType;",
            ">;"
        }
    .end annotation
.end field

.field private static final objectOnlyTypes:[Ljava/lang/invoke/MethodType;

.field private static final ptypesOffset:J

.field private static final rtypeOffset:J

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x124L


# instance fields
.field private form:Ljava/lang/invoke/MethodTypeForm;
    .annotation runtime Ljava/lang/invoke/Stable;
    .end annotation
.end field

.field private methodDescriptor:Ljava/lang/String;
    .annotation runtime Ljava/lang/invoke/Stable;
    .end annotation
.end field

.field private final ptypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final rtype:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private wrapAlt:Ljava/lang/invoke/MethodType;
    .annotation runtime Ljava/lang/invoke/Stable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-class v1, Ljava/lang/invoke/MethodType;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    .line 196
    new-instance v1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    invoke-direct {v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;-><init>()V

    sput-object v1, Ljava/lang/invoke/MethodType;->internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    .line 198
    new-array v1, v2, [Ljava/lang/Class;

    sput-object v1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    .line 316
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/invoke/MethodType;

    sput-object v1, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    .line 1051
    new-array v1, v2, [Ljava/io/ObjectStreamField;

    sput-object v1, Ljava/lang/invoke/MethodType;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1129
    :try_start_20
    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    .line 1130
    const-class v2, Ljava/lang/invoke/MethodType;

    const-string/jumbo v3, "rtype"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1129
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/lang/invoke/MethodType;->rtypeOffset:J

    .line 1131
    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    .line 1132
    const-class v2, Ljava/lang/invoke/MethodType;

    const-string/jumbo v3, "ptypes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1131
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/lang/invoke/MethodType;->ptypesOffset:J
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_42} :catch_43

    .line 90
    return-void

    .line 1133
    :catch_43
    move-exception v0

    .line 1134
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    .line 1114
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 1115
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Z)V
    .registers 5
    .param p3, "trusted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
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
    if-eqz p3, :cond_10

    .end local p2    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_d
    iput-object p2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 114
    return-void

    .line 113
    .restart local p2    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_10
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    move-object p2, v0

    goto :goto_d
.end method

.method private constructor <init>([Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
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

.method private MethodType_init(Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1119
    .local p1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    .line 1120
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    .line 1121
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/lang/invoke/MethodType;->rtypeOffset:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1122
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/lang/invoke/MethodType;->ptypesOffset:J

    invoke-virtual {v0, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1123
    return-void
.end method

.method static canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 911
    if-eq p0, p1, :cond_7

    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_8

    :cond_7
    return v3

    :cond_8
    const-class v2, Ljava/lang/Object;

    if-eq p1, v2, :cond_7

    .line 913
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 916
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_17

    return v3

    .line 917
    :cond_17
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    .line 918
    .local v1, "sw":Lsun/invoke/util/Wrapper;
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 920
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    return v2

    .line 923
    :cond_2a
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->wrapperType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2

    .line 925
    .end local v1    # "sw":Lsun/invoke/util/Wrapper;
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 927
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_3e

    return v3

    .line 928
    :cond_3e
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 935
    .local v0, "dw":Lsun/invoke/util/Wrapper;
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->wrapperType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 936
    return v3

    .line 942
    :cond_4d
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->isWrapperType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 943
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    .line 942
    if-eqz v2, :cond_5e

    .line 945
    return v3

    .line 954
    :cond_5e
    const/4 v2, 0x0

    return v2

    .line 957
    .end local v0    # "dw":Lsun/invoke/util/Wrapper;
    :cond_60
    return v3
.end method

.method private canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 6
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
    .line 900
    .local p1, "srcTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "dstTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 901
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 902
    const/4 v1, 0x0

    return v1

    .line 900
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 905
    :cond_13
    const/4 v1, 0x1

    return v1
.end method

.method private static checkPtype(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_f

    .line 171
    const-string/jumbo v0, "parameter type cannot be void"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 172
    :cond_f
    return-void
.end method

.method private static checkPtypes([Ljava/lang/Class;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 176
    .local v1, "slots":I
    const/4 v2, 0x0

    array-length v3, p0

    :goto_3
    if-ge v2, v3, :cond_17

    aget-object v0, p0, v2

    .line 177
    .local v0, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkPtype(Ljava/lang/Class;)V

    .line 178
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_12

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_14

    .line 179
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 176
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 182
    .end local v0    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    array-length v2, p0

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 183
    return v1
.end method

.method private static checkRtype(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method static checkSlotCount(I)V
    .registers 3
    .param p0, "count"    # I

    .prologue
    .line 186
    sget-boolean v0, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    .line 188
    and-int/lit16 v0, p0, 0xff

    if-eq v0, p0, :cond_1f

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bad parameter count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 190
    :cond_1f
    return-void
.end method

.method private equals(Ljava/lang/invoke/MethodType;)Z
    .registers 4
    .param p1, "that"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 763
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    if-ne v0, v1, :cond_f

    .line 764
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .line 763
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    .line 884
    if-eq p0, p1, :cond_7

    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_8

    .line 885
    :cond_7
    return v0

    .line 884
    :cond_8
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_7

    .line 886
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_1b

    .line 889
    invoke-static {p0, p1}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 890
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 892
    const/4 v0, 0x0

    return v0

    .line 895
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :cond_2d
    return v0
.end method

.method public static fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/TypeNotPresentException;
        }
    .end annotation

    .prologue
    .line 1009
    const-string/jumbo v3, "("

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1010
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2a

    .line 1012
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not a method descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1011
    :cond_2a
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_11

    .line 1013
    invoke-static {p0, p1}, Lsun/invoke/util/BytecodeDescriptor;->parseMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v2

    .line 1014
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1015
    .local v1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 1016
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v0

    .line 1017
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v3

    return-object v3
.end method

.method public static genericMethodType(I)Ljava/lang/invoke/MethodType;
    .registers 2
    .param p0, "objectArgCount"    # I

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/invoke/MethodType;->genericMethodType(IZ)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static genericMethodType(IZ)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p0, "objectArgCount"    # I
    .param p1, "finalArray"    # Z

    .prologue
    .line 332
    invoke-static {p0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 333
    if-nez p1, :cond_16

    const/4 v0, 0x0

    .line 334
    .local v0, "ivarargs":I
    :goto_6
    mul-int/lit8 v4, p0, 0x2

    add-int v2, v4, v0

    .line 335
    .local v2, "ootIndex":I
    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    array-length v4, v4

    if-ge v2, v4, :cond_18

    .line 336
    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    aget-object v1, v4, v2

    .line 337
    .local v1, "mt":Ljava/lang/invoke/MethodType;
    if-eqz v1, :cond_18

    return-object v1

    .line 333
    .end local v0    # "ivarargs":I
    .end local v1    # "mt":Ljava/lang/invoke/MethodType;
    .end local v2    # "ootIndex":I
    :cond_16
    const/4 v0, 0x1

    .restart local v0    # "ivarargs":I
    goto :goto_6

    .line 339
    .restart local v2    # "ootIndex":I
    :cond_18
    add-int v4, p0, v0

    new-array v3, v4, [Ljava/lang/Class;

    .line 340
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    if-eqz v0, :cond_27

    const-class v4, [Ljava/lang/Object;

    aput-object v4, v3, p0

    .line 342
    :cond_27
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 343
    .restart local v1    # "mt":Ljava/lang/invoke/MethodType;
    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    array-length v4, v4

    if-ge v2, v4, :cond_37

    .line 344
    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    aput-object v1, v4, v2

    .line 346
    :cond_37
    return-object v1
.end method

.method private static listToArray(Ljava/util/List;)[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "ptypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 231
    sget-object v0, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method static makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p2, "trusted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/invoke/MethodType;->internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    new-instance v2, Ljava/lang/invoke/MethodType;

    invoke-direct {v2, p1, p0}, Ljava/lang/invoke/MethodType;-><init>([Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodType;

    .line 306
    .local v0, "mt":Ljava/lang/invoke/MethodType;
    if-eqz v0, :cond_10

    .line 307
    return-object v0

    .line 308
    :cond_10
    array-length v1, p1

    if-nez v1, :cond_16

    .line 309
    sget-object p1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    const/4 p2, 0x1

    .line 311
    .end local p2    # "trusted":Z
    :cond_16
    new-instance v0, Ljava/lang/invoke/MethodType;

    .end local v0    # "mt":Ljava/lang/invoke/MethodType;
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/invoke/MethodType;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Z)V

    .line 313
    .restart local v0    # "mt":Ljava/lang/invoke/MethodType;
    invoke-static {v0}, Ljava/lang/invoke/MethodTypeForm;->findForm(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodTypeForm;

    move-result-object v1

    iput-object v1, v0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    .line 314
    sget-object v1, Ljava/lang/invoke/MethodType;->internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType;

    return-object v1
.end method

.method public static methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptype0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 278
    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptype0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 247
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    .line 248
    .local v0, "ptypes1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aput-object p1, v0, v3

    .line 249
    array-length v1, p2

    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    invoke-static {p0, v0, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public static methodType(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 4
    .param p1, "ptypes"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x0

    .line 225
    .local v0, "notrust":Z
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public static methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method private static newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;
    .registers 3
    .param p0, "num"    # Ljava/lang/Object;

    .prologue
    .line 192
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bad index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 193
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1094
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1096
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1097
    .local v1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 1101
    .local v0, "parameterArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v1}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    .line 1102
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parameterArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    check-cast v0, [Ljava/lang/Class;

    .line 1105
    .restart local v0    # "parameterArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, v1, v0}, Ljava/lang/invoke/MethodType;->MethodType_init(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1106
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1147
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method static toFieldDescriptorString(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1043
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unwrapWithNoPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 4
    .param p0, "wt"    # Ljava/lang/invoke/MethodType;

    .prologue
    const/4 v2, 0x3

    .line 691
    sget-boolean v1, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 692
    :cond_11
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 693
    .local v0, "uwt":Ljava/lang/invoke/MethodType;
    if-nez v0, :cond_1e

    .line 695
    invoke-static {p0, v2, v2}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 696
    if-nez v0, :cond_1c

    .line 697
    move-object v0, p0

    .line 698
    :cond_1c
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 700
    :cond_1e
    return-object v0
.end method

.method private static wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 4
    .param p0, "pt"    # Ljava/lang/invoke/MethodType;

    .prologue
    const/4 v2, 0x2

    .line 679
    sget-boolean v1, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 680
    :cond_11
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 681
    .local v0, "wt":Ljava/lang/invoke/MethodType;
    if-nez v0, :cond_27

    .line 683
    invoke-static {p0, v2, v2}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 684
    sget-boolean v1, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v1, :cond_25

    if-nez v0, :cond_25

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 685
    :cond_25
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 687
    :cond_27
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1075
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1076
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1077
    return-void
.end method


# virtual methods
.method public appendParameterTypes(Ljava/util/List;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "ptypesToInsert":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public varargs appendParameterTypes([Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "ptypesToInsert":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method asCollectorType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;
    .registers 9
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 522
    sget-boolean v2, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v2, :cond_12

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    if-ge v2, v5, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 523
    :cond_12
    sget-boolean v2, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v2, :cond_26

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->lastParameterType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_26

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 525
    :cond_26
    const-class v2, [Ljava/lang/Object;

    if-ne p1, v2, :cond_40

    .line 526
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 527
    .local v1, "res":Ljava/lang/invoke/MethodType;
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_3a

    .line 528
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 535
    :cond_3a
    :goto_3a
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ne v2, v5, :cond_5b

    .line 536
    return-object v1

    .line 531
    .end local v1    # "res":Ljava/lang/invoke/MethodType;
    :cond_40
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 532
    .local v0, "elemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v2, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v2, :cond_50

    if-nez v0, :cond_50

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 533
    :cond_50
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {p2, v0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .restart local v1    # "res":Ljava/lang/invoke/MethodType;
    goto :goto_3a

    .line 538
    .end local v0    # "elemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5b
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2
.end method

.method asSpreaderType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;
    .registers 10
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v5, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v5, :cond_10

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v5

    if-ge v5, p2, :cond_10

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 480
    :cond_10
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v5, v5

    sub-int v4, v5, p2

    .line 481
    .local v4, "spreadPos":I
    if-nez p2, :cond_18

    return-object p0

    .line 482
    :cond_18
    const-class v5, [Ljava/lang/Object;

    if-ne p1, v5, :cond_36

    .line 483
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->isGeneric()Z

    move-result v5

    if-eqz v5, :cond_23

    return-object p0

    .line 484
    :cond_23
    if-nez v4, :cond_36

    .line 486
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 487
    .local v3, "res":Ljava/lang/invoke/MethodType;
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_35

    .line 488
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 490
    :cond_35
    return-object v3

    .line 493
    .end local v3    # "res":Ljava/lang/invoke/MethodType;
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 494
    .local v0, "elemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v5, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v5, :cond_46

    if-nez v0, :cond_46

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 495
    :cond_46
    move v2, v4

    .local v2, "i":I
    :goto_47
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v2, v5, :cond_6a

    .line 496
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v5, v5, v2

    if-eq v5, v0, :cond_67

    .line 497
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 498
    .local v1, "fixedPtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v5, v5

    invoke-static {v1, v2, v5, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 499
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    return-object v5

    .line 495
    .end local v1    # "fixedPtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 502
    :cond_6a
    return-object p0
.end method

.method basicType()Ljava/lang/invoke/MethodType;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->basicType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public changeParameterType(ILjava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 374
    .local p2, "nptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_7

    return-object p0

    .line 375
    :cond_7
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtype(Ljava/lang/Class;)V

    .line 376
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 377
    .local v0, "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aput-object p2, v0, p1

    .line 378
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "nrtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_7

    return-object p0

    .line 588
    :cond_7
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public dropParameterTypes(II)Ljava/lang/invoke/MethodType;
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 553
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v3

    .line 554
    .local v0, "len":I
    if-ltz p1, :cond_8

    if-le p1, p2, :cond_2c

    .line 555
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 554
    :cond_2c
    if-gt p2, v0, :cond_8

    .line 556
    if-ne p1, p2, :cond_31

    return-object p0

    .line 558
    :cond_31
    if-nez p1, :cond_48

    .line 559
    if-ne p2, v0, :cond_3f

    .line 561
    sget-object v1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    .line 576
    .local v1, "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_37
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v3

    return-object v3

    .line 564
    .end local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3f
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v3, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .restart local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_37

    .line 567
    .end local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_48
    if-ne p2, v0, :cond_53

    .line 569
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v3, v5, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .restart local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_37

    .line 571
    .end local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_53
    sub-int v2, v0, p2

    .line 572
    .local v2, "tail":I
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int v4, p1, v2

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 573
    .restart local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v3, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_37
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 759
    if-eq p0, p1, :cond_d

    instance-of v0, p1, Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/invoke/MethodType;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/invoke/MethodType;)Z

    move-result v0

    :goto_c
    return v0

    .restart local p1    # "x":Ljava/lang/Object;
    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public erase()Ljava/lang/invoke/MethodType;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->erasedType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method explicitCastEquivalentToAsType(Ljava/lang/invoke/MethodType;)Z
    .registers 9
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 850
    if-ne p0, p1, :cond_5

    return v5

    .line 851
    :cond_5
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v4, p1, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 852
    return v6

    .line 854
    :cond_10
    iget-object v2, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 855
    .local v2, "srcTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 856
    .local v0, "dstTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ne v0, v2, :cond_17

    .line 857
    return v5

    .line 859
    :cond_17
    sget-boolean v3, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v3, :cond_25

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_25

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 860
    :cond_25
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    array-length v3, v0

    if-ge v1, v3, :cond_37

    .line 861
    aget-object v3, v2, v1

    aget-object v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 862
    return v6

    .line 860
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 865
    :cond_37
    return v5
.end method

.method form()Ljava/lang/invoke/MethodTypeForm;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    return-object v0
.end method

.method public generic()Ljava/lang/invoke/MethodType;
    .registers 2

    .prologue
    .line 646
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public hasPrimitives()Z
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->hasPrimitives()Z

    move-result v0

    return v0
.end method

.method public hasWrappers()Z
    .registers 2

    .prologue
    .line 608
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->unwrap()Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-eq v0, p0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 779
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->hashCode()I

    move-result v2

    add-int/lit8 v0, v2, 0x1f

    .line 780
    .local v0, "hashCode":I
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_c
    if-ge v2, v4, :cond_1b

    aget-object v1, v3, v2

    .line 781
    .local v1, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Class;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 782
    .end local v1    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    return v0
.end method

.method public insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;
    .registers 4
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 431
    .local p2, "ptypesToInsert":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 10
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .local p2, "ptypesToInsert":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 393
    iget-object v4, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v4

    .line 394
    .local v2, "len":I
    if-ltz p1, :cond_8

    if-le p1, v2, :cond_11

    .line 395
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v4

    throw v4

    .line 396
    :cond_11
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    move-result v1

    .line 397
    .local v1, "ins":I
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterSlotCount()I

    move-result v4

    array-length v5, p2

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 398
    array-length v0, p2

    .line 399
    .local v0, "ilen":I
    if-nez v0, :cond_23

    return-object p0

    .line 400
    :cond_23
    iget-object v4, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int v5, v2, v0

    invoke-static {v4, v6, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 401
    .local v3, "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    add-int v4, p1, v0

    sub-int v5, v2, p1

    invoke-static {v3, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    invoke-static {p2, v6, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    iget-object v4, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4
.end method

.method invokerType()Ljava/lang/invoke/MethodType;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 635
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/invoke/MethodHandle;

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method isConvertibleTo(Ljava/lang/invoke/MethodType;)Z
    .registers 11
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 816
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v3

    .line 817
    .local v3, "oldForm":Ljava/lang/invoke/MethodTypeForm;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v2

    .line 818
    .local v2, "newForm":Ljava/lang/invoke/MethodTypeForm;
    if-ne v3, v2, :cond_d

    .line 820
    return v8

    .line 821
    :cond_d
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 822
    return v7

    .line 823
    :cond_1c
    iget-object v4, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 824
    .local v4, "srcTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 825
    .local v1, "dstTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ne v4, v1, :cond_23

    .line 826
    return v8

    .line 828
    :cond_23
    array-length v0, v4

    .local v0, "argc":I
    array-length v5, v1

    if-eq v0, v5, :cond_28

    .line 829
    return v7

    .line 830
    :cond_28
    if-gt v0, v8, :cond_3a

    .line 831
    if-ne v0, v8, :cond_39

    aget-object v5, v4, v7

    aget-object v6, v1, v7

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_39

    .line 832
    return v7

    .line 833
    :cond_39
    return v8

    .line 835
    :cond_3a
    invoke-virtual {v3}, Ljava/lang/invoke/MethodTypeForm;->primitiveParameterCount()I

    move-result v5

    if-nez v5, :cond_54

    iget-object v5, v3, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    if-ne v5, p0, :cond_54

    .line 839
    :cond_44
    sget-boolean v5, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v5, :cond_63

    invoke-direct {p0, v4, v1}, Ljava/lang/invoke/MethodType;->canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_63

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 836
    :cond_54
    invoke-virtual {v2}, Ljava/lang/invoke/MethodTypeForm;->primitiveParameterCount()I

    move-result v5

    if-nez v5, :cond_5e

    iget-object v5, v2, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    if-eq v5, p1, :cond_44

    .line 842
    :cond_5e
    invoke-direct {p0, v4, v1}, Ljava/lang/invoke/MethodType;->canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v5

    return v5

    .line 840
    :cond_63
    return v8
.end method

.method isGeneric()Z
    .registers 2

    .prologue
    .line 650
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->erase()Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-ne p0, v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method lastParameterType()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 737
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v1

    .line 738
    .local v0, "len":I
    if-nez v0, :cond_8

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    goto :goto_7
.end method

.method leadingReferenceParameter()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 510
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v1

    if-eqz v1, :cond_10

    .line 511
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v0, v1, v2

    .local v0, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    .line 510
    if-eqz v1, :cond_18

    .line 512
    .end local v0    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    const-string/jumbo v1, "no leading reference parameter"

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 513
    .restart local v0    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    return-object v0
.end method

.method public parameterArray()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public parameterCount()I
    .registers 2

    .prologue
    .line 717
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public parameterList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method parameterSlotCount()I
    .registers 2

    .prologue
    .line 972
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->parameterSlotCount()I

    move-result v0

    return v0
.end method

.method public parameterType(I)Ljava/lang/Class;
    .registers 3
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public ptypes()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    return-object v0
.end method

.method varargs replaceParameterTypes(II[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .prologue
    .line 462
    .local p3, "ptypesToInsert":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ne p1, p2, :cond_7

    .line 463
    invoke-virtual {p0, p1, p3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 464
    :cond_7
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v2

    .line 465
    .local v1, "len":I
    if-ltz p1, :cond_e

    if-le p1, p2, :cond_32

    .line 466
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v2

    throw v2

    .line 465
    :cond_32
    if-gt p2, v1, :cond_e

    .line 467
    array-length v0, p3

    .line 468
    .local v0, "ilen":I
    if-nez v0, :cond_3c

    .line 469
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 470
    :cond_3c
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2
.end method

.method public returnType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    return-object v0
.end method

.method public rtype()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    return-object v0
.end method

.method public toMethodDescriptorString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->methodDescriptor:Ljava/lang/String;

    .line 1035
    .local v0, "desc":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1036
    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->methodDescriptor:Ljava/lang/String;

    .line 1039
    :cond_a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_27

    .line 800
    if-lez v0, :cond_19

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_19
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 803
    :cond_27
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unwrap()Ljava/lang/invoke/MethodType;
    .registers 3

    .prologue
    .line 674
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v1

    if-nez v1, :cond_c

    move-object v0, p0

    .line 675
    .local v0, "noprims":Ljava/lang/invoke/MethodType;
    :goto_7
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->unwrapWithNoPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1

    .line 674
    .end local v0    # "noprims":Ljava/lang/invoke/MethodType;
    :cond_c
    invoke-static {p0}, Ljava/lang/invoke/MethodType;->wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .restart local v0    # "noprims":Ljava/lang/invoke/MethodType;
    goto :goto_7
.end method

.method public wrap()Ljava/lang/invoke/MethodType;
    .registers 2

    .prologue
    .line 663
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Ljava/lang/invoke/MethodType;->wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object p0

    .end local p0    # "this":Ljava/lang/invoke/MethodType;
    :cond_a
    return-object p0
.end method
