.class public abstract Ljava/lang/invoke/VarHandle;
.super Ljava/lang/Object;
.source "VarHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/VarHandle$AccessMode;,
        Ljava/lang/invoke/VarHandle$AccessType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALL_MODES_BIT_MASK:I

.field private static final greylist-max-o ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

.field private static final greylist-max-o BITWISE_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

.field private static final greylist-max-o NUMERIC_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

.field private static final greylist-max-o READ_ACCESS_MODES_BIT_MASK:I

.field private static final greylist-max-o UNSAFE:Lsun/misc/Unsafe;

.field private static final greylist-max-o WRITE_ACCESS_MODES_BIT_MASK:I


# instance fields
.field private final greylist-max-o accessModesBitMask:I

.field private final greylist-max-o coordinateType0:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o coordinateType1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o varType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 438
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Lsun/misc/Unsafe;

    .line 2289
    invoke-static {}, Ljava/lang/invoke/VarHandle$AccessMode;->values()[Ljava/lang/invoke/VarHandle$AccessMode;

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_56

    .line 2295
    sget-object v0, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/VarHandle;->accessTypesToBitMask(Ljava/util/EnumSet;)I

    move-result v0

    sput v0, Ljava/lang/invoke/VarHandle;->READ_ACCESS_MODES_BIT_MASK:I

    .line 2297
    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/VarHandle;->accessTypesToBitMask(Ljava/util/EnumSet;)I

    move-result v1

    sput v1, Ljava/lang/invoke/VarHandle;->WRITE_ACCESS_MODES_BIT_MASK:I

    .line 2299
    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    sget-object v3, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    sget-object v4, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    .line 2300
    invoke-static {v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/invoke/VarHandle;->accessTypesToBitMask(Ljava/util/EnumSet;)I

    move-result v2

    sput v2, Ljava/lang/invoke/VarHandle;->ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

    .line 2304
    sget-object v3, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    .line 2305
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/VarHandle;->accessTypesToBitMask(Ljava/util/EnumSet;)I

    move-result v3

    sput v3, Ljava/lang/invoke/VarHandle;->NUMERIC_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

    .line 2307
    sget-object v4, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    .line 2308
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/invoke/VarHandle;->accessTypesToBitMask(Ljava/util/EnumSet;)I

    move-result v4

    sput v4, Ljava/lang/invoke/VarHandle;->BITWISE_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

    .line 2310
    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    or-int/2addr v0, v4

    sput v0, Ljava/lang/invoke/VarHandle;->ALL_MODES_BIT_MASK:I

    .line 2315
    return-void

    .line 2290
    :cond_56
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "accessModes overflow"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;Ljava/lang/Class;)V
    .registers 10
    .param p3, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2237
    .local p1, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "backingArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "coordinateType0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "coordinateType1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    .line 2239
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    .line 2240
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    .line 2241
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2243
    .local v0, "backingArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, p1, :cond_40

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_29

    goto :goto_40

    .line 2244
    :cond_29
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported backingArrayType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2247
    :cond_40
    :goto_40
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_4d

    .line 2248
    invoke-static {p1, p3}, Ljava/lang/invoke/VarHandle;->alignedAccessModesBitMask(Ljava/lang/Class;Z)I

    move-result v1

    iput v1, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    goto :goto_53

    .line 2250
    :cond_4d
    invoke-static {p1}, Ljava/lang/invoke/VarHandle;->unalignedAccessModesBitMask(Ljava/lang/Class;)I

    move-result v1

    iput v1, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    .line 2252
    :goto_53
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;Z)V
    .registers 4
    .param p2, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2204
    .local p1, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2205
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    .line 2206
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    .line 2207
    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    .line 2208
    invoke-static {p1, p2}, Ljava/lang/invoke/VarHandle;->alignedAccessModesBitMask(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    .line 2209
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;ZLjava/lang/Class;)V
    .registers 5
    .param p2, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2219
    .local p1, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "coordinateType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2220
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    .line 2221
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    .line 2222
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    .line 2223
    invoke-static {p1, p2}, Ljava/lang/invoke/VarHandle;->alignedAccessModesBitMask(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    .line 2224
    return-void
.end method

.method static greylist-max-o accessTypesToBitMask(Ljava/util/EnumSet;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Ljava/lang/invoke/VarHandle$AccessType;",
            ">;)I"
        }
    .end annotation

    .line 2318
    .local p0, "accessTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/invoke/VarHandle$AccessType;>;"
    const/4 v0, 0x0

    .line 2319
    .local v0, "m":I
    invoke-static {}, Ljava/lang/invoke/VarHandle$AccessMode;->values()[Ljava/lang/invoke/VarHandle$AccessMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 2320
    .local v4, "accessMode":Ljava/lang/invoke/VarHandle$AccessMode;
    iget-object v5, v4, Ljava/lang/invoke/VarHandle$AccessMode;->at:Ljava/lang/invoke/VarHandle$AccessType;

    invoke-virtual {p0, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2321
    invoke-virtual {v4}, Ljava/lang/invoke/VarHandle$AccessMode;->ordinal()I

    move-result v5

    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v0, v5

    .line 2319
    .end local v4    # "accessMode":Ljava/lang/invoke/VarHandle$AccessMode;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2324
    :cond_1e
    return v0
.end method

.method public static blacklist acquireFence()V
    .registers 1

    .line 2155
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->loadFence()V

    .line 2156
    return-void
.end method

.method static greylist-max-o alignedAccessModesBitMask(Ljava/lang/Class;Z)I
    .registers 4
    .param p1, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)I"
        }
    .end annotation

    .line 2330
    .local p0, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Ljava/lang/invoke/VarHandle;->ALL_MODES_BIT_MASK:I

    .line 2333
    .local v0, "bitMask":I
    if-eqz p1, :cond_7

    .line 2334
    sget v1, Ljava/lang/invoke/VarHandle;->READ_ACCESS_MODES_BIT_MASK:I

    and-int/2addr v0, v1

    .line 2340
    :cond_7
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    .line 2343
    sget v1, Ljava/lang/invoke/VarHandle;->NUMERIC_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

    not-int v1, v1

    and-int/2addr v0, v1

    .line 2347
    :cond_27
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    .line 2349
    sget v1, Ljava/lang/invoke/VarHandle;->BITWISE_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

    not-int v1, v1

    and-int/2addr v0, v1

    .line 2351
    :cond_43
    return v0
.end method

.method public static blacklist fullFence()V
    .registers 1

    .line 2141
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->fullFence()V

    .line 2142
    return-void
.end method

.method public static blacklist loadLoadFence()V
    .registers 1

    .line 2181
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->loadFence()V

    .line 2182
    return-void
.end method

.method public static blacklist releaseFence()V
    .registers 1

    .line 2169
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->storeFence()V

    .line 2170
    return-void
.end method

.method public static blacklist storeStoreFence()V
    .registers 1

    .line 2193
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->storeFence()V

    .line 2194
    return-void
.end method

.method static greylist-max-o unalignedAccessModesBitMask(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2366
    .local p0, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Ljava/lang/invoke/VarHandle;->READ_ACCESS_MODES_BIT_MASK:I

    sget v1, Ljava/lang/invoke/VarHandle;->WRITE_ACCESS_MODES_BIT_MASK:I

    or-int/2addr v0, v1

    .line 2369
    .local v0, "bitMask":I
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_15

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_15

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_15

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_18

    .line 2371
    :cond_15
    sget v1, Ljava/lang/invoke/VarHandle;->ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

    or-int/2addr v0, v1

    .line 2375
    :cond_18
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_20

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_23

    .line 2376
    :cond_20
    sget v1, Ljava/lang/invoke/VarHandle;->NUMERIC_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

    or-int/2addr v0, v1

    .line 2380
    :cond_23
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_2b

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_2e

    .line 2381
    :cond_2b
    sget v1, Ljava/lang/invoke/VarHandle;->BITWISE_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I

    or-int/2addr v0, v1

    .line 2383
    :cond_2e
    return v0
.end method


# virtual methods
.method public final greylist-max-o accessModeType(Ljava/lang/invoke/VarHandle$AccessMode;)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p1, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1971
    iget-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 1974
    iget-object v0, p1, Ljava/lang/invoke/VarHandle$AccessMode;->at:Ljava/lang/invoke/VarHandle$AccessType;

    iget-object v2, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/invoke/VarHandle$AccessType;->accessModeType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0

    .line 1976
    :cond_12
    iget-object v0, p1, Ljava/lang/invoke/VarHandle$AccessMode;->at:Ljava/lang/invoke/VarHandle$AccessType;

    iget-object v2, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    iget-object v5, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/invoke/VarHandle$AccessType;->accessModeType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public final varargs native blacklist compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist compareAndExchangeAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist compareAndExchangeRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist compareAndSet([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final greylist-max-o coordinateTypes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1934
    iget-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    if-nez v0, :cond_7

    .line 1935
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1936
    :cond_7
    iget-object v1, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    if-nez v1, :cond_10

    .line 1937
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1939
    :cond_10
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final varargs native blacklist get([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndAddAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndAddRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndBitwiseAnd([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndBitwiseAndAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndBitwiseAndRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndBitwiseOr([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndBitwiseOrAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndBitwiseOrRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndBitwiseXor([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndBitwiseXorAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndBitwiseXorRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndSet([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndSetAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getAndSetRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getOpaque([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist getVolatile([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final greylist-max-o isAccessModeSupported(Ljava/lang/invoke/VarHandle$AccessMode;)Z
    .registers 5
    .param p1, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;

    .line 2000
    invoke-virtual {p1}, Ljava/lang/invoke/VarHandle$AccessMode;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 2001
    .local v0, "testBit":I
    iget v2, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public final varargs native blacklist set([Ljava/lang/Object;)V
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist setOpaque([Ljava/lang/Object;)V
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist setRelease([Ljava/lang/Object;)V
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist setVolatile([Ljava/lang/Object;)V
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final greylist-max-o toMethodHandle(Ljava/lang/invoke/VarHandle$AccessMode;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p1, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;

    .line 2040
    invoke-virtual {p0, p1}, Ljava/lang/invoke/VarHandle;->accessModeType(Ljava/lang/invoke/VarHandle$AccessMode;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2041
    .local v0, "type":Ljava/lang/invoke/MethodType;
    invoke-static {p1, v0}, Ljava/lang/invoke/MethodHandles;->varHandleExactInvoker(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method

.method public final greylist-max-o varType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    return-object v0
.end method

.method public final varargs native blacklist weakCompareAndSet([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist weakCompareAndSetAcquire([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist weakCompareAndSetPlain([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native blacklist weakCompareAndSetRelease([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method
