.class public Ljava/util/EnumMap;
.super Ljava/util/AbstractMap;
.source "EnumMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$1;,
        Ljava/util/EnumMap$EntryIterator;,
        Ljava/util/EnumMap$EntrySet;,
        Ljava/util/EnumMap$EnumMapIterator;,
        Ljava/util/EnumMap$KeyIterator;,
        Ljava/util/EnumMap$KeySet;,
        Ljava/util/EnumMap$ValueIterator;,
        Ljava/util/EnumMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/Object;

.field private static final ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x65d7df7be907ca1L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient keyUniverse:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient size:I

.field private transient vals:[Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;
    .registers 2
    .param p0, "-this"    # Ljava/util/EnumMap;

    .prologue
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/EnumMap;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/EnumMap;

    .prologue
    iget v0, p0, Ljava/util/EnumMap;->size:I

    return v0
.end method

.method static synthetic -get2(Ljava/util/EnumMap;)[Ljava/lang/Object;
    .registers 2
    .param p0, "-this"    # Ljava/util/EnumMap;

    .prologue
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/EnumMap;I)I
    .registers 2
    .param p0, "-this"    # Ljava/util/EnumMap;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/util/EnumMap;->size:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "-this"    # Ljava/util/EnumMap;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "-this"    # Ljava/util/EnumMap;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/util/EnumMap;I)I
    .registers 3
    .param p0, "-this"    # Ljava/util/EnumMap;
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->entryHashCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "-this"    # Ljava/util/EnumMap;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "-this"    # Ljava/util/EnumMap;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    new-instance v0, Ljava/util/EnumMap$1;

    invoke-direct {v0}, Ljava/util/EnumMap$1;-><init>()V

    sput-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Enum;

    sput-object v0, Ljava/util/EnumMap;->ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
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
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
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

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 153
    iget v0, p1, Ljava/util/EnumMap;->size:I

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 169
    instance-of v1, p1, Ljava/util/EnumMap;

    if-eqz v1, :cond_24

    move-object v0, p1

    .line 170
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

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 174
    iget v1, v0, Ljava/util/EnumMap;->size:I

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 183
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    :goto_23
    return-void

    .line 176
    :cond_24
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Specified map is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_33
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 179
    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v1

    iput-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 180
    iget-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 181
    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    goto :goto_23
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 226
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 227
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 226
    :goto_18
    return v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private entryHashCode(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
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

.method private equals(Ljava/util/EnumMap;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 686
    iget-object v5, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v6, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v5, v6, :cond_13

    .line 687
    iget v5, p0, Ljava/util/EnumMap;->size:I

    if-nez v5, :cond_11

    iget v5, p1, Ljava/util/EnumMap;->size:I

    if-nez v5, :cond_11

    :goto_10
    return v3

    :cond_11
    move v3, v4

    goto :goto_10

    .line 690
    :cond_13
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v5, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v5, v5

    if-ge v1, v5, :cond_31

    .line 691
    iget-object v5, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v5, v1

    .line 692
    .local v2, "ourValue":Ljava/lang/Object;
    iget-object v5, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v0, v5, v1

    .line 693
    .local v0, "hisValue":Ljava/lang/Object;
    if-eq v0, v2, :cond_2e

    .line 694
    if-eqz v0, :cond_2d

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 693
    if-eqz v5, :cond_2e

    .line 695
    :cond_2d
    return v4

    .line 690
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 697
    .end local v0    # "hisValue":Ljava/lang/Object;
    .end local v2    # "ourValue":Ljava/lang/Object;
    :cond_31
    return v3
.end method

.method private static getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;>(",
            "Ljava/lang/Class",
            "<TK;>;)[TK;"
        }
    .end annotation

    .prologue
    .line 755
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstantsShared()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    return-object v0
.end method

.method private isValidKey(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    if-nez p1, :cond_5

    .line 315
    return v2

    .line 318
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 319
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v0, v3, :cond_15

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-ne v3, v4, :cond_16

    :cond_15
    :goto_15
    return v1

    :cond_16
    move v1, v2

    goto :goto_15
.end method

.method private maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 120
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    if-nez p1, :cond_4

    sget-object p1, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    .end local p1    # "value":Ljava/lang/Object;
    :cond_4
    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 798
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 800
    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v4

    iput-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 801
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 804
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 807
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, v2, :cond_29

    .line 808
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 809
    .local v1, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 810
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 812
    .end local v1    # "key":Ljava/lang/Enum;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_29
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 298
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 299
    return v3

    .line 300
    :cond_8
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 301
    .local v0, "index":I
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 302
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 303
    iget v1, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 304
    const/4 v1, 0x1

    return v1

    .line 306
    :cond_29
    return v3
.end method

.method private typeCheck(Ljava/lang/Enum;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 744
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v0, v1, :cond_30

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v1, v2, :cond_30

    .line 745
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_30
    return-void
.end method

.method private unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    sget-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    .end local p1    # "value":Ljava/lang/Object;
    :cond_5
    return-object p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 776
    iget v2, p0, Ljava/util/EnumMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

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
    :cond_2a
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
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

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/EnumMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 728
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 730
    .local v1, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    check-cast v1, Ljava/util/EnumMap;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_15

    .line 734
    .local v1, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v2, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 735
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 736
    return-object v1

    .line 731
    .end local v1    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :catch_15
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 204
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 206
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    array-length v4, v3

    move v1, v2

    :goto_9
    if-ge v1, v4, :cond_18

    aget-object v0, v3, v1

    .line 207
    .local v0, "val":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 208
    const/4 v1, 0x1

    return v1

    .line 206
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 210
    .end local v0    # "val":Ljava/lang/Object;
    :cond_18
    return v2
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 467
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6

    .line 468
    return-object v0

    .line 470
    :cond_6
    new-instance v1, Ljava/util/EnumMap$EntrySet;

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntrySet;)V

    iput-object v1, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 657
    if-ne p0, p1, :cond_5

    .line 658
    return v7

    .line 659
    :cond_5
    instance-of v4, p1, Ljava/util/EnumMap;

    if-eqz v4, :cond_10

    .line 660
    check-cast p1, Ljava/util/EnumMap;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->equals(Ljava/util/EnumMap;)Z

    move-result v4

    return v4

    .line 661
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_10
    instance-of v4, p1, Ljava/util/Map;

    if-nez v4, :cond_15

    .line 662
    return v5

    :cond_15
    move-object v2, p1

    .line 664
    check-cast v2, Ljava/util/Map;

    .line 665
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget v4, p0, Ljava/util/EnumMap;->size:I

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v4, v6, :cond_21

    .line 666
    return v5

    .line 668
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v4, v4

    if-ge v0, v4, :cond_58

    .line 669
    iget-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-eqz v4, :cond_55

    .line 670
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v1, v4, v0

    .line 671
    .local v1, "key":Ljava/lang/Enum;, "TK;"
    iget-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-direct {p0, v4}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 672
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_4a

    .line 673
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_48

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    :goto_45
    if-nez v4, :cond_55

    .line 674
    return v5

    :cond_48
    move v4, v5

    .line 673
    goto :goto_45

    .line 676
    :cond_4a
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 677
    return v5

    .line 668
    .end local v1    # "key":Ljava/lang/Enum;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 682
    :cond_58
    return v7
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 247
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    :goto_14
    return-object v0

    .line 247
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public hashCode()I
    .registers 4

    .prologue
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
    :cond_15
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 382
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    .line 383
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_c

    .line 384
    new-instance v0, Ljava/util/EnumMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/EnumMap$KeySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$KeySet;)V

    .line 385
    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    .line 387
    :cond_c
    return-object v0
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
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
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 271
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 272
    if-nez v1, :cond_1b

    .line 273
    iget v2, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/EnumMap;->size:I

    .line 274
    :cond_1b
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 250
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v3, p1, Ljava/util/EnumMap;

    if-eqz v3, :cond_55

    move-object v0, p1

    .line 335
    check-cast v0, Ljava/util/EnumMap;

    .line 336
    .local v0, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    iget-object v3, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v3, v4, :cond_36

    .line 337
    invoke-virtual {v0}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 338
    return-void

    .line 339
    :cond_14
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    :cond_36
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    iget-object v3, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v3, v3

    if-ge v2, v3, :cond_58

    .line 343
    iget-object v3, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v3, v2

    .line 344
    .local v1, "emValue":Ljava/lang/Object;
    if-eqz v1, :cond_52

    .line 345
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_4e

    .line 346
    iget v3, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/EnumMap;->size:I

    .line 347
    :cond_4e
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 342
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 351
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    .end local v1    # "emValue":Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_55
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 353
    :cond_58
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 287
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 288
    return-object v3

    .line 289
    :cond_8
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 290
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 291
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 292
    if-eqz v1, :cond_1e

    .line 293
    iget v2, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/EnumMap;->size:I

    .line 294
    :cond_1e
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .registers 2

    .prologue
    .line 193
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget v0, p0, Ljava/util/EnumMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    .line 422
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    .line 423
    new-instance v0, Ljava/util/EnumMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$Values;)V

    .line 424
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    .line 426
    :cond_c
    return-object v0
.end method
