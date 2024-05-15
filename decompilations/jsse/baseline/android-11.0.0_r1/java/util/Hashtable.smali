.class public Ljava/util/Hashtable;
.super Ljava/util/Dictionary;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Hashtable$Enumerator;,
        Ljava/util/Hashtable$HashtableEntry;,
        Ljava/util/Hashtable$ValueCollection;,
        Ljava/util/Hashtable$EntrySet;,
        Ljava/util/Hashtable$KeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ENTRIES:I = 0x2

.field private static final greylist-max-o KEYS:I = 0x0

.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final greylist-max-o VALUES:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
.field private transient greylist-max-o count:I

.field private volatile transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private greylist-max-o loadFactor:F

.field private transient greylist-max-o modCount:I

.field private transient greylist-max-o table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;"
        }
    .end annotation
.end field

.field private greylist-max-o threshold:I

.field private volatile transient greylist-max-o values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 213
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/Hashtable;-><init>(IF)V

    .line 214
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 205
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/Hashtable;-><init>(IF)V

    .line 206
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 180
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 181
    if-ltz p1, :cond_3d

    .line 184
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_26

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_26

    .line 187
    if-nez p1, :cond_16

    .line 188
    const/4 p1, 0x1

    .line 189
    :cond_16
    iput p2, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 190
    new-array v0, p1, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 193
    const v0, 0x7ffffff8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/util/Hashtable;->threshold:I

    .line 194
    return-void

    .line 185
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 226
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/Hashtable;-><init>(IF)V

    .line 227
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 228
    return-void
.end method

.method static synthetic blacklist access$100(Ljava/util/Hashtable;I)Ljava/util/Iterator;
    .registers 3
    .param p0, "x0"    # Ljava/util/Hashtable;
    .param p1, "x1"    # I

    .line 130
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->getIterator(I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/util/Hashtable;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/Hashtable;

    .line 130
    iget v0, p0, Ljava/util/Hashtable;->count:I

    return v0
.end method

.method static synthetic blacklist access$210(Ljava/util/Hashtable;)I
    .registers 3
    .param p0, "x0"    # Ljava/util/Hashtable;

    .line 130
    iget v0, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ljava/util/Hashtable;->count:I

    return v0
.end method

.method static synthetic blacklist access$400(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .registers 2
    .param p0, "x0"    # Ljava/util/Hashtable;

    .line 130
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method static synthetic blacklist access$500(Ljava/util/Hashtable;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/Hashtable;

    .line 130
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    return v0
.end method

.method static synthetic blacklist access$508(Ljava/util/Hashtable;)I
    .registers 3
    .param p0, "x0"    # Ljava/util/Hashtable;

    .line 130
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/Hashtable;->modCount:I

    return v0
.end method

.method private greylist-max-o addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .param p1, "hash"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 422
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 424
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 425
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v1, p0, Ljava/util/Hashtable;->count:I

    iget v2, p0, Ljava/util/Hashtable;->threshold:I

    if-lt v1, v2, :cond_1e

    .line 427
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 429
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 430
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 431
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int p4, v1, v2

    .line 436
    :cond_1e
    aget-object v1, v0, p4

    .line 437
    .local v1, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    new-instance v2, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v2, p1, p2, p3, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    aput-object v2, v0, p4

    .line 438
    iget v2, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Hashtable;->count:I

    .line 439
    return-void
.end method

.method private greylist-max-o getEnumeration(I)Ljava/util/Enumeration;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    .line 600
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget v0, p0, Ljava/util/Hashtable;->count:I

    if-nez v0, :cond_9

    .line 601
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 603
    :cond_9
    new-instance v0, Ljava/util/Hashtable$Enumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Hashtable$Enumerator;-><init>(Ljava/util/Hashtable;IZ)V

    return-object v0
.end method

.method private greylist-max-o getIterator(I)Ljava/util/Iterator;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 608
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget v0, p0, Ljava/util/Hashtable;->count:I

    if-nez v0, :cond_9

    .line 609
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 611
    :cond_9
    new-instance v0, Ljava/util/Hashtable$Enumerator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Hashtable$Enumerator;-><init>(Ljava/util/Hashtable;IZ)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1171
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1174
    iget v0, p0, Ljava/util/Hashtable;->loadFactor:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_79

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_79

    .line 1178
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1179
    .local v0, "origlength":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1182
    .local v1, "elements":I
    if-ltz v1, :cond_62

    .line 1187
    int-to-float v2, v1

    iget v3, p0, Ljava/util/Hashtable;->loadFactor:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1193
    div-int/lit8 v2, v1, 0x14

    add-int/2addr v2, v1

    int-to-float v2, v2

    iget v3, p0, Ljava/util/Hashtable;->loadFactor:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x3

    .line 1194
    .local v2, "length":I
    if-le v2, v1, :cond_37

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_37

    .line 1195
    add-int/lit8 v2, v2, -0x1

    .line 1196
    :cond_37
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1197
    new-array v3, v2, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1198
    int-to-float v3, v2

    iget v4, p0, Ljava/util/Hashtable;->loadFactor:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x4f000000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Ljava/util/Hashtable;->threshold:I

    .line 1199
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/Hashtable;->count:I

    .line 1202
    :goto_4f
    if-lez v1, :cond_61

    .line 1204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1206
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1208
    .local v4, "value":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {p0, v5, v3, v4}, Ljava/util/Hashtable;->reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1202
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_4f

    .line 1210
    :cond_61
    return-void

    .line 1183
    .end local v2    # "length":I
    :cond_62
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal # of Elements: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1175
    .end local v0    # "origlength":I
    .end local v1    # "elements":I
    :cond_79
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/Hashtable;->loadFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 1226
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_36

    .line 1231
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1232
    .local v0, "hash":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    array-length v2, p1

    rem-int/2addr v1, v2

    .line 1233
    .local v1, "index":I
    aget-object v2, p1, v1

    .local v2, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_e
    if-eqz v2, :cond_26

    .line 1234
    iget v3, v2, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v3, v0, :cond_23

    iget-object v3, v2, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_23

    .line 1235
    :cond_1d
    new-instance v3, Ljava/io/StreamCorruptedException;

    invoke-direct {v3}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v3

    .line 1233
    :cond_23
    :goto_23
    iget-object v2, v2, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_e

    .line 1240
    .end local v2    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_26
    aget-object v2, p1, v1

    .line 1241
    .local v2, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    new-instance v3, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v3, v0, p2, p3, v2}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    aput-object v3, p1, v1

    .line 1242
    iget v3, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/Hashtable;->count:I

    .line 1243
    return-void

    .line 1227
    .end local v0    # "hash":I
    .end local v1    # "index":I
    .end local v2    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_36
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 9
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1134
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v0, 0x0

    .line 1136
    .local v0, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 1138
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1141
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1142
    iget v1, p0, Ljava/util/Hashtable;->count:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1145
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_11
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v2, v2

    if-ge v1, v2, :cond_2e

    .line 1146
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v2, v2, v1

    .line 1148
    .local v2, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_1a
    if-eqz v2, :cond_2b

    .line 1149
    new-instance v3, Ljava/util/Hashtable$HashtableEntry;

    const/4 v4, 0x0

    iget-object v5, v2, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v6, v2, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6, v0}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    move-object v0, v3

    .line 1151
    iget-object v3, v2, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v2, v3

    goto :goto_1a

    .line 1145
    .end local v2    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1154
    .end local v1    # "index":I
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_3f

    .line 1157
    :goto_2f
    if-eqz v0, :cond_3e

    .line 1158
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1159
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1160
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_2f

    .line 1162
    :cond_3e
    return-void

    .line 1154
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method


# virtual methods
.method public declared-synchronized whitelist core-platform-api test-api clear()V
    .registers 4

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 532
    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 533
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v1, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Hashtable;->modCount:I

    .line 534
    array-length v1, v0

    .local v1, "index":I
    :goto_a
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_12

    .line 535
    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_a

    .line 536
    .end local v1    # "index":I
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_12
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Hashtable;->count:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 537
    monitor-exit p0

    return-void

    .line 531
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 6

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 548
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 549
    .local v0, "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v1, v0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 550
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v1, v1

    .local v1, "i":I
    :goto_11
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v3, 0x0

    if-lez v1, :cond_2e

    .line 551
    iget-object v1, v0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v4, v4, v2

    if-eqz v4, :cond_29

    .line 552
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/Hashtable$HashtableEntry;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable$HashtableEntry;

    goto :goto_2a

    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_29
    nop

    :goto_2a
    aput-object v3, v1, v2

    move v1, v2

    goto :goto_11

    .line 554
    .end local v2    # "i":I
    :cond_2e
    iput-object v3, v0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 555
    iput-object v3, v0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 556
    iput-object v3, v0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 557
    const/4 v1, 0x0

    iput v1, v0, Ljava/util/Hashtable;->modCount:I
    :try_end_37
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_37} :catch_3b
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 558
    monitor-exit p0

    return-object v0

    .line 547
    .end local v0    # "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    :catchall_39
    move-exception v0

    goto :goto_42

    .line 559
    :catch_3b
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_3c
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_39

    .line 547
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_42
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 1055
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1058
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1059
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 1061
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 1062
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v3, :cond_4a

    .line 1063
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_45

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1064
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p2, p1, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1065
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_41

    .line 1066
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 1067
    if-eqz v4, :cond_36

    .line 1068
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3a

    .line 1070
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_36
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v0, v2

    .line 1072
    :goto_3a
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I

    goto :goto_43

    .line 1074
    :cond_41
    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_56

    .line 1076
    :goto_43
    monitor-exit p0

    return-object v5

    .line 1062
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_45
    move-object v4, v3

    :try_start_46
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v5

    goto :goto_13

    .line 1080
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_4a
    const/4 v4, 0x0

    invoke-interface {p2, p1, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1081
    .local v4, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_54

    .line 1082
    invoke-direct {p0, v1, p1, v4, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_56

    .line 1085
    :cond_54
    monitor-exit p0

    return-object v4

    .line 1054
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4    # "newValue":Ljava/lang/Object;, "TV;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    monitor-enter p0

    .line 1002
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1005
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1006
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 1008
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 1009
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_12
    if-eqz v3, :cond_28

    .line 1010
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_24

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1012
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_33

    monitor-exit p0

    return-object v4

    .line 1009
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_24
    :try_start_24
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v4

    goto :goto_12

    .line 1016
    :cond_28
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1017
    .local v4, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_31

    .line 1018
    invoke-direct {p0, v1, p1, v4, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_33

    .line 1021
    :cond_31
    monitor-exit p0

    return-object v4

    .line 1001
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4    # "newValue":Ljava/lang/Object;, "TV;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 1026
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1029
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1030
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 1032
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 1033
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v3, :cond_4a

    .line 1034
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_45

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1035
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p2, p1, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1036
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_41

    .line 1037
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 1038
    if-eqz v4, :cond_36

    .line 1039
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3a

    .line 1041
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_36
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v0, v2

    .line 1043
    :goto_3a
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I

    goto :goto_43

    .line 1045
    :cond_41
    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4d

    .line 1047
    :goto_43
    monitor-exit p0

    return-object v5

    .line 1033
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_45
    move-object v4, v3

    :try_start_46
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_4d

    move-object v3, v5

    goto :goto_13

    .line 1050
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_4a
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 1025
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 294
    if-eqz p1, :cond_24

    .line 298
    :try_start_3
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 299
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    array-length v1, v0

    .local v1, "i":I
    :goto_6
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1f

    .line 300
    aget-object v1, v0, v2

    .local v1, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_c
    if-eqz v1, :cond_1d

    .line 301
    iget-object v3, v1, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_22

    if-eqz v3, :cond_19

    .line 302
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 300
    :cond_19
    :try_start_19
    iget-object v3, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_22

    move-object v1, v3

    goto :goto_c

    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_1d
    move v1, v2

    .end local v1    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    goto :goto_6

    .line 306
    .end local v2    # "i":I
    :cond_1f
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 293
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local p1    # "value":Ljava/lang/Object;
    :catchall_22
    move-exception p1

    goto :goto_2a

    .line 295
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_24
    :try_start_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_22

    .line 293
    .end local p1    # "value":Ljava/lang/Object;
    :goto_2a
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api containsKey(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 336
    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 337
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 338
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 339
    .local v2, "index":I
    aget-object v3, v0, v2

    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_f
    if-eqz v3, :cond_24

    .line 340
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_20

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_27

    if-eqz v4, :cond_20

    .line 341
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 339
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_20
    :try_start_20
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_27

    move-object v3, v4

    goto :goto_f

    .line 344
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_24
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 335
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 322
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 274
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 274
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 682
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 683
    new-instance v0, Ljava/util/Hashtable$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 684
    :cond_10
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 796
    const/4 v0, 0x1

    if-ne p1, p0, :cond_6

    .line 797
    monitor-exit p0

    return v0

    .line 799
    :cond_6
    :try_start_6
    instance-of v1, p1, Ljava/util/Map;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_60

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 800
    monitor-exit p0

    return v2

    .line 801
    :cond_d
    :try_start_d
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 802
    .local v1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v4
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_60

    if-eq v3, v4, :cond_1c

    .line 803
    monitor-exit p0

    return v2

    .line 806
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_20} :catch_5d
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_20} :catch_5a
    .catchall {:try_start_1c .. :try_end_20} :catchall_60

    :try_start_20
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 807
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 808
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 809
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 810
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 811
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-nez v6, :cond_48

    .line 812
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_46

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_44
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_44} :catch_58
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_44} :catch_5a
    .catchall {:try_start_20 .. :try_end_44} :catchall_60

    if-nez v7, :cond_54

    .line 813
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_46
    monitor-exit p0

    return v2

    .line 815
    :cond_48
    :try_start_48
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_48 .. :try_end_50} :catch_58
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_50} :catch_5a
    .catchall {:try_start_48 .. :try_end_50} :catchall_60

    if-nez v7, :cond_54

    .line 816
    monitor-exit p0

    return v2

    .line 818
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    .restart local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_54
    goto :goto_24

    .line 823
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_55
    nop

    .line 825
    monitor-exit p0

    return v0

    .line 819
    :catch_58
    move-exception v0

    goto :goto_5e

    .line 821
    :catch_5a
    move-exception v0

    .line 822
    .local v0, "unused":Ljava/lang/NullPointerException;
    monitor-exit p0

    return v2

    .line 819
    .end local v0    # "unused":Ljava/lang/NullPointerException;
    .restart local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catch_5d
    move-exception v0

    .line 820
    .local v0, "unused":Ljava/lang/ClassCastException;
    :goto_5e
    monitor-exit p0

    return v2

    .line 795
    .end local v0    # "unused":Ljava/lang/ClassCastException;
    .end local v1    # "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    monitor-enter p0

    .line 873
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 877
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 878
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 879
    .local v4, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_e
    if-eqz v4, :cond_25

    .line 880
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 881
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v4, v5

    .line 883
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    if-ne v0, v5, :cond_1f

    goto :goto_e

    .line 884
    :cond_1f
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2a

    .line 878
    .end local v4    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 888
    :cond_28
    monitor-exit p0

    return-void

    .line 872
    .end local v0    # "expectedModCount":I
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local p1    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 364
    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 365
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 366
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 367
    .local v2, "index":I
    aget-object v3, v0, v2

    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_f
    if-eqz v3, :cond_25

    .line 368
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_21

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 369
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_28

    monitor-exit p0

    return-object v4

    .line 367
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_21
    :try_start_21
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_28

    move-object v3, v4

    goto :goto_f

    .line 372
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_25
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 363
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 866
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    .line 867
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_9

    move-object v1, p2

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    monitor-exit p0

    return-object v1

    .line 865
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api hashCode()I
    .registers 7

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "h":I
    :try_start_2
    iget v1, p0, Ljava/util/Hashtable;->count:I

    if-eqz v1, :cond_30

    iget v1, p0, Ljava/util/Hashtable;->loadFactor:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    goto :goto_30

    .line 850
    :cond_e
    iget v1, p0, Ljava/util/Hashtable;->loadFactor:F

    neg-float v1, v1

    iput v1, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 851
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 852
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    .line 853
    .local v4, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_1b
    if-eqz v4, :cond_26

    .line 854
    invoke-virtual {v4}, Ljava/util/Hashtable$HashtableEntry;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 855
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v4, v5

    goto :goto_1b

    .line 852
    .end local v4    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 859
    :cond_29
    iget v2, p0, Ljava/util/Hashtable;->loadFactor:F

    neg-float v2, v2

    iput v2, p0, Ljava/util/Hashtable;->loadFactor:F
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_32

    .line 861
    monitor-exit p0

    return v0

    .line 848
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_30
    :goto_30
    monitor-exit p0

    return v0

    .line 845
    .end local v0    # "h":I
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api isEmpty()Z
    .registers 2

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 246
    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 246
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 642
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 643
    new-instance v0, Ljava/util/Hashtable$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 644
    :cond_10
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 259
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 259
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    monitor-enter p0

    .line 1090
    :try_start_1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1093
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1094
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 1096
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 1097
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v3, :cond_4a

    .line 1098
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_45

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1099
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p3, v5, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1100
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_41

    .line 1101
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 1102
    if-eqz v4, :cond_36

    .line 1103
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3a

    .line 1105
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_36
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v0, v2

    .line 1107
    :goto_3a
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I

    goto :goto_43

    .line 1109
    :cond_41
    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_51

    .line 1111
    :goto_43
    monitor-exit p0

    return-object v5

    .line 1097
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_45
    move-object v4, v3

    :try_start_46
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v5

    goto :goto_13

    .line 1115
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_4a
    if-eqz p2, :cond_4f

    .line 1116
    invoke-direct {p0, v1, p1, p2, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_51

    .line 1119
    :cond_4f
    monitor-exit p0

    return-object p2

    .line 1089
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 460
    if-eqz p2, :cond_31

    .line 465
    :try_start_3
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 466
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 467
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 469
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 470
    .local v3, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_11
    if-eqz v3, :cond_29

    .line 471
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_25

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 472
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 473
    .local v4, "old":Ljava/lang/Object;, "TV;"
    iput-object p2, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2f

    .line 474
    monitor-exit p0

    return-object v4

    .line 470
    .end local v4    # "old":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_25
    :try_start_25
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v4

    goto :goto_11

    .line 478
    :cond_29
    invoke-direct {p0, v1, p1, p2, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2f

    .line 479
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 459
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_2f
    move-exception p1

    goto :goto_37

    .line 461
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    :cond_31
    :try_start_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_2f

    .line 459
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :goto_37
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    .line 524
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 525
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    goto :goto_9

    .line 526
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_21
    monitor-exit p0

    return-void

    .line 523
    .end local p1    # "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 913
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 917
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 918
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 920
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 921
    .local v3, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_12
    if-eqz v3, :cond_2c

    .line 922
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_28

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 923
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 924
    .local v4, "old":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_26

    .line 925
    iput-object p2, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_32

    .line 927
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_26
    monitor-exit p0

    return-object v4

    .line 921
    .end local v4    # "old":Ljava/lang/Object;, "TV;"
    :cond_28
    :try_start_28
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v4

    goto :goto_12

    .line 931
    :cond_2c
    invoke-direct {p0, v1, p1, p2, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_32

    .line 932
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 912
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected whitelist core-platform-api test-api rehash()V
    .registers 10

    .line 392
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v0, v0

    .line 393
    .local v0, "oldCapacity":I
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 396
    .local v1, "oldMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 397
    .local v2, "newCapacity":I
    const v3, 0x7ffffff7

    sub-int v4, v2, v3

    if-lez v4, :cond_16

    .line 398
    if-ne v0, v3, :cond_13

    .line 400
    return-void

    .line 401
    :cond_13
    const v2, 0x7ffffff7

    .line 403
    :cond_16
    new-array v3, v2, [Ljava/util/Hashtable$HashtableEntry;

    .line 405
    .local v3, "newMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v4, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Hashtable;->modCount:I

    .line 406
    int-to-float v4, v2

    iget v5, p0, Ljava/util/Hashtable;->loadFactor:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x4f000000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Ljava/util/Hashtable;->threshold:I

    .line 407
    iput-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 409
    move v4, v0

    .local v4, "i":I
    :goto_2e
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .local v5, "i":I
    if-lez v4, :cond_49

    .line 410
    aget-object v4, v1, v5

    .local v4, "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_34
    if-eqz v4, :cond_47

    .line 411
    move-object v6, v4

    .line 412
    .local v6, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v4, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 414
    iget v7, v6, Ljava/util/Hashtable$HashtableEntry;->hash:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    rem-int/2addr v7, v2

    .line 415
    .local v7, "index":I
    aget-object v8, v3, v7

    iput-object v8, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 416
    aput-object v6, v3, v7

    .line 417
    .end local v6    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v7    # "index":I
    goto :goto_34

    .end local v4    # "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_47
    move v4, v5

    goto :goto_2e

    .line 419
    .end local v5    # "i":I
    :cond_49
    return-void
.end method

.method public declared-synchronized whitelist core-platform-api test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 493
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 494
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 496
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 497
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_10
    const/4 v5, 0x0

    if-eqz v3, :cond_41

    .line 498
    iget v6, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_3c

    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 499
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 500
    if-eqz v4, :cond_2c

    .line 501
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_30

    .line 503
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_2c
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v0, v2

    .line 505
    :goto_30
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I

    .line 506
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 507
    .local v6, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_43

    .line 508
    monitor-exit p0

    return-object v6

    .line 497
    .end local v6    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3c
    move-object v4, v3

    :try_start_3d
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_43

    move-object v3, v5

    goto :goto_10

    .line 511
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_41
    monitor-exit p0

    return-object v5

    .line 491
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 937
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 940
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 941
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 943
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 944
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v3, :cond_49

    .line 945
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_44

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 946
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 947
    if-eqz v4, :cond_36

    .line 948
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3a

    .line 950
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_36
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v0, v2

    .line 952
    :goto_3a
    iget v5, p0, Ljava/util/Hashtable;->count:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/Hashtable;->count:I

    .line 953
    const/4 v5, 0x0

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_4c

    .line 954
    monitor-exit p0

    return v6

    .line 944
    :cond_44
    move-object v4, v3

    :try_start_45
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_4c

    move-object v3, v5

    goto :goto_13

    .line 957
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_49
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 936
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 984
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 986
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 987
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 989
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 990
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_12
    if-eqz v3, :cond_2a

    .line 991
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_26

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 992
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 993
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2d

    .line 994
    monitor-exit p0

    return-object v4

    .line 990
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_26
    :try_start_26
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_2d

    move-object v3, v4

    goto :goto_12

    .line 997
    :cond_2a
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 983
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 962
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 965
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 966
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 968
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 969
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_15
    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 970
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_33

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 971
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 972
    iput-object p3, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_39

    .line 973
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 975
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_31
    monitor-exit p0

    return v4

    .line 969
    :cond_33
    :try_start_33
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_39

    move-object v3, v4

    goto :goto_15

    .line 979
    :cond_37
    monitor-exit p0

    return v4

    .line 961
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local p3    # "newValue":Ljava/lang/Object;, "TV;"
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 893
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 897
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 898
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_2e

    aget-object v4, v1, v3

    .line 899
    .local v4, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_e
    if-eqz v4, :cond_2b

    .line 900
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 901
    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 900
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 902
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v4, v5

    .line 904
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    if-ne v0, v5, :cond_25

    goto :goto_e

    .line 905
    :cond_25
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_30

    .line 898
    .end local v4    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 909
    :cond_2e
    monitor-exit p0

    return-void

    .line 892
    .end local v0    # "expectedModCount":I
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api size()I
    .registers 2

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 236
    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 236
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 9

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 576
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 577
    .local v0, "max":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 578
    const-string v1, "{}"
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_62

    monitor-exit p0

    return-object v1

    .line 580
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 583
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    const/4 v3, 0x0

    .line 585
    .local v3, "i":I
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 586
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 587
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 588
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-ne v5, p0, :cond_34

    const-string v7, "(this Map)"

    goto :goto_38

    :cond_34
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_38
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    if-ne v6, p0, :cond_45

    const-string v7, "(this Map)"

    goto :goto_49

    :cond_45
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_49
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    if-ne v3, v0, :cond_59

    .line 593
    const/16 v7, 0x7d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_57
    .catchall {:try_start_e .. :try_end_57} :catchall_62

    monitor-exit p0

    return-object v7

    .line 594
    :cond_59
    :try_start_59
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_62

    .line 584
    nop

    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 575
    .end local v0    # "max":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "i":I
    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 763
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    if-nez v0, :cond_10

    .line 764
    new-instance v0, Ljava/util/Hashtable$ValueCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueCollection;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 766
    :cond_10
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    return-object v0
.end method
