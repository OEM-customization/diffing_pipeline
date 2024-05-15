.class public Ljava/util/EnumMap;
.super Ljava/util/AbstractMap;
.source "EnumMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$EntryIterator;,
        Ljava/util/EnumMap$ValueIterator;,
        Ljava/util/EnumMap$KeyIterator;,
        Ljava/util/EnumMap$EnumMapIterator;,
        Ljava/util/EnumMap$EntrySet;,
        Ljava/util/EnumMap$Values;,
        Ljava/util/EnumMap$KeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o NULL:Ljava/lang/Object;

.field private static final greylist-max-o ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x65d7df7be907ca1L


# instance fields
.field private transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o keyUniverse:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient greylist-max-o size:I

.field private transient greylist-max-o vals:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Ljava/util/EnumMap$1;

    invoke-direct {v0}, Ljava/util/EnumMap$1;-><init>()V

    sput-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Enum;

    sput-object v0, Ljava/util/EnumMap;->ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TK;>;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 137
    iput-object p1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 138
    invoke-static {p1}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 139
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/EnumMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 150
    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 151
    iget-object v0, p1, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 152
    iget-object v0, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 153
    iget v0, p1, Ljava/util/EnumMap;->size:I

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 154
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 169
    instance-of v0, p1, Ljava/util/EnumMap;

    if-eqz v0, :cond_24

    .line 170
    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    .line 171
    .local v0, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    iget-object v1, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 172
    iget-object v1, v0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iput-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 173
    iget-object v1, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 174
    iget v1, v0, Ljava/util/EnumMap;->size:I

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 175
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    goto :goto_4c

    .line 176
    :cond_24
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 178
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 179
    invoke-static {v0}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 180
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 181
    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 183
    :goto_4c
    return-void

    .line 177
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified map is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist access$1000(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x0"    # Ljava/util/EnumMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Ljava/util/EnumMap;)[Ljava/lang/Enum;
    .registers 2
    .param p0, "x0"    # Ljava/util/EnumMap;

    .line 79
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Ljava/util/EnumMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 79
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1600(Ljava/util/EnumMap;I)I
    .registers 3
    .param p0, "x0"    # Ljava/util/EnumMap;
    .param p1, "x1"    # I

    .line 79
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->entryHashCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$200(Ljava/util/EnumMap;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/EnumMap;

    .line 79
    iget v0, p0, Ljava/util/EnumMap;->size:I

    return v0
.end method

.method static synthetic blacklist access$210(Ljava/util/EnumMap;)I
    .registers 3
    .param p0, "x0"    # Ljava/util/EnumMap;

    .line 79
    iget v0, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ljava/util/EnumMap;->size:I

    return v0
.end method

.method static synthetic blacklist access$500(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Ljava/util/EnumMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 79
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/util/EnumMap;

    .line 79
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$900(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x0"    # Ljava/util/EnumMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 226
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 227
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 226
    :goto_1e
    return v0
.end method

.method private greylist-max-o entryHashCode(I)I
    .registers 4
    .param p1, "index"    # I

    .line 717
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o equals(Ljava/util/EnumMap;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "**>;)Z"
        }
    .end annotation

    .line 686
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_12

    .line 687
    iget v0, p0, Ljava/util/EnumMap;->size:I

    if-nez v0, :cond_11

    iget v0, p1, Ljava/util/EnumMap;->size:I

    if-nez v0, :cond_11

    move v2, v3

    :cond_11
    return v2

    .line 690
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 691
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 692
    .local v1, "ourValue":Ljava/lang/Object;
    iget-object v4, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v0

    .line 693
    .local v4, "hisValue":Ljava/lang/Object;
    if-eq v4, v1, :cond_2b

    if-eqz v4, :cond_2a

    .line 694
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 695
    :cond_2a
    return v2

    .line 690
    .end local v1    # "ourValue":Ljava/lang/Object;
    .end local v4    # "hisValue":Ljava/lang/Object;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 697
    .end local v0    # "i":I
    :cond_2e
    return v3
.end method

.method private static greylist-max-o getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;>(",
            "Ljava/lang/Class<",
            "TK;>;)[TK;"
        }
    .end annotation

    .line 755
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstantsShared()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    return-object v0
.end method

.method private greylist-max-o isValidKey(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 314
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 315
    return v0

    .line 318
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 319
    .local v1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v1, v2, :cond_14

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-ne v2, v3, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method private greylist-max-o maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 120
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 798
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 800
    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 801
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 804
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 807
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v0, :cond_27

    .line 808
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 809
    .local v2, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 810
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .end local v2    # "key":Ljava/lang/Enum;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 812
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method private greylist-max-o removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 298
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 299
    return v1

    .line 300
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 301
    .local v0, "index":I
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 302
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 303
    iget v1, p0, Ljava/util/EnumMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 304
    return v2

    .line 306
    :cond_29
    return v1
.end method

.method private greylist-max-o typeCheck(Ljava/lang/Enum;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 743
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 744
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v0, v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-ne v1, v2, :cond_11

    goto :goto_2d

    .line 745
    :cond_11
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_2d
    :goto_2d
    return-void
.end method

.method private greylist-max-o unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 125
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    sget-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move-object v0, p1

    :goto_7
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 776
    iget v0, p0, Ljava/util/EnumMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 779
    iget v0, p0, Ljava/util/EnumMap;->size:I

    .line 780
    .local v0, "entriesToBeWritten":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-lez v0, :cond_2a

    .line 781
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_27

    .line 782
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 783
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 784
    add-int/lit8 v0, v0, -0x1

    .line 780
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 787
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api clear()V
    .registers 3

    .line 359
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 361
    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api clone()Ljava/util/EnumMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 728
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 730
    .local v0, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_17

    move-object v0, v1

    .line 733
    nop

    .line 734
    iget-object v1, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 735
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 736
    return-object v0

    .line 731
    :catch_17
    move-exception v1

    .line 732
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public whitelist core-platform-api test-api containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 222
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public whitelist core-platform-api test-api containsValue(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .line 204
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 206
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 207
    .local v4, "val":Ljava/lang/Object;
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 208
    const/4 v0, 0x1

    return v0

    .line 206
    .end local v4    # "val":Ljava/lang/Object;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 210
    :cond_18
    return v2
.end method

.method public whitelist core-platform-api test-api entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 466
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 467
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_5

    .line 468
    return-object v0

    .line 470
    :cond_5
    new-instance v1, Ljava/util/EnumMap$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V

    iput-object v1, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    return-object v1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 657
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 658
    return v0

    .line 659
    :cond_4
    instance-of v1, p1, Ljava/util/EnumMap;

    if-eqz v1, :cond_10

    .line 660
    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;->equals(Ljava/util/EnumMap;)Z

    move-result v0

    return v0

    .line 661
    :cond_10
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 662
    return v2

    .line 664
    :cond_16
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 665
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget v3, p0, Ljava/util/EnumMap;->size:I

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_22

    .line 666
    return v2

    .line 668
    :cond_22
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v5, v4

    if-ge v3, v5, :cond_53

    .line 669
    iget-object v5, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v6, v5, v3

    if-eqz v6, :cond_50

    .line 670
    aget-object v4, v4, v3

    .line 671
    .local v4, "key":Ljava/lang/Enum;, "TK;"
    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 672
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_45

    .line 673
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_44

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 674
    :cond_44
    return v2

    .line 676
    :cond_45
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 677
    return v2

    .line 668
    .end local v4    # "key":Ljava/lang/Enum;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 682
    .end local v3    # "i":I
    :cond_53
    return v0
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 246
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 247
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 246
    :goto_17
    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 705
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 707
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 708
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_12

    .line 709
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->entryHashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 707
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 713
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public whitelist core-platform-api test-api keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    .line 383
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_d

    .line 384
    new-instance v1, Ljava/util/EnumMap$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$KeySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V

    move-object v0, v1

    .line 385
    iput-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    .line 387
    :cond_d
    return-object v0
.end method

.method public whitelist core-platform-api test-api put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 267
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->typeCheck(Ljava/lang/Enum;)V

    .line 269
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 270
    .local v0, "index":I
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 271
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 272
    if-nez v2, :cond_19

    .line 273
    iget v1, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 274
    :cond_19
    invoke-direct {p0, v2}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 79
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 334
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v0, p1, Ljava/util/EnumMap;

    if-eqz v0, :cond_52

    .line 335
    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    .line 336
    .local v0, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    iget-object v1, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v1, v2, :cond_32

    .line 337
    invoke-virtual {v0}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 338
    return-void

    .line 339
    :cond_14
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v2, v2

    if-ge v1, v2, :cond_51

    .line 343
    iget-object v2, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 344
    .local v2, "emValue":Ljava/lang/Object;
    if-eqz v2, :cond_4e

    .line 345
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-nez v3, :cond_4a

    .line 346
    iget v3, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/EnumMap;->size:I

    .line 347
    :cond_4a
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 342
    .end local v2    # "emValue":Ljava/lang/Object;
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 350
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    .end local v1    # "i":I
    :cond_51
    goto :goto_55

    .line 351
    :cond_52
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 353
    :goto_55
    return-void
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 287
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 288
    return-object v1

    .line 289
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 290
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 291
    .local v3, "oldValue":Ljava/lang/Object;
    aput-object v1, v2, v0

    .line 292
    if-eqz v3, :cond_1d

    .line 293
    iget v1, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 294
    :cond_1d
    invoke-direct {p0, v3}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 193
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget v0, p0, Ljava/util/EnumMap;->size:I

    return v0
.end method

.method public whitelist core-platform-api test-api values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 421
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    .line 422
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_d

    .line 423
    new-instance v1, Ljava/util/EnumMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V

    move-object v0, v1

    .line 424
    iput-object v0, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    .line 426
    :cond_d
    return-object v0
.end method
