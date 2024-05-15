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
        Ljava/util/Hashtable$EntrySet;,
        Ljava/util/Hashtable$Enumerator;,
        Ljava/util/Hashtable$HashtableEntry;,
        Ljava/util/Hashtable$KeySet;,
        Ljava/util/Hashtable$ValueCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ENTRIES:I = 0x2

.field private static final KEYS:I = 0x0

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final VALUES:I = 0x1

.field private static final serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
.field private transient count:I

.field private volatile transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private loadFactor:F

.field private transient modCount:I

.field private transient table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<**>;"
        }
    .end annotation
.end field

.field private threshold:I

.field private volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/Hashtable;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/Hashtable;

    .prologue
    iget v0, p0, Ljava/util/Hashtable;->count:I

    return v0
.end method

.method static synthetic -get1(Ljava/util/Hashtable;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/Hashtable;

    .prologue
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    return v0
.end method

.method static synthetic -get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .registers 2
    .param p0, "-this"    # Ljava/util/Hashtable;

    .prologue
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/Hashtable;I)I
    .registers 2
    .param p0, "-this"    # Ljava/util/Hashtable;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/util/Hashtable;->count:I

    return p1
.end method

.method static synthetic -set1(Ljava/util/Hashtable;I)I
    .registers 2
    .param p0, "-this"    # Ljava/util/Hashtable;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/util/Hashtable;->modCount:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/util/Hashtable;I)Ljava/util/Iterator;
    .registers 3
    .param p0, "-this"    # Ljava/util/Hashtable;
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->getIterator(I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 213
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/Hashtable;-><init>(IF)V

    .line 214
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 205
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/Hashtable;-><init>(IF)V

    .line 206
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 166
    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 181
    if-gez p1, :cond_22

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_22
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2d

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 185
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_47
    if-nez p1, :cond_4a

    .line 188
    const/4 p1, 0x1

    .line 189
    :cond_4a
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
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
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

.method private addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .param p1, "hash"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v2, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Hashtable;->modCount:I

    .line 424
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 425
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v2, p0, Ljava/util/Hashtable;->count:I

    iget v3, p0, Ljava/util/Hashtable;->threshold:I

    if-lt v2, v3, :cond_1e

    .line 427
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 429
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 430
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 431
    const v2, 0x7fffffff

    and-int/2addr v2, p1

    array-length v3, v1

    rem-int p4, v2, v3

    .line 436
    :cond_1e
    aget-object v0, v1, p4

    .line 437
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    new-instance v2, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v2, p1, p2, p3, v0}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    aput-object v2, v1, p4

    .line 438
    iget v2, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Hashtable;->count:I

    .line 439
    return-void
.end method

.method private getEnumeration(I)Ljava/util/Enumeration;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 600
    iget v0, p0, Ljava/util/Hashtable;->count:I

    if-nez v0, :cond_a

    .line 601
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 603
    :cond_a
    new-instance v0, Ljava/util/Hashtable$Enumerator;

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Hashtable$Enumerator;-><init>(Ljava/util/Hashtable;IZ)V

    return-object v0
.end method

.method private getIterator(I)Ljava/util/Iterator;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v7, 0x0

    .line 1171
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1174
    iget v5, p0, Ljava/util/Hashtable;->loadFactor:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_13

    iget v5, p0, Ljava/util/Hashtable;->loadFactor:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1175
    :cond_13
    new-instance v5, Ljava/io/StreamCorruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal Load: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljava/util/Hashtable;->loadFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1178
    :cond_2f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1179
    .local v3, "origlength":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1182
    .local v0, "elements":I
    if-gez v0, :cond_53

    .line 1183
    new-instance v5, Ljava/io/StreamCorruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal # of Elements: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1187
    :cond_53
    int-to-float v5, v0

    iget v6, p0, Ljava/util/Hashtable;->loadFactor:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1193
    div-int/lit8 v5, v0, 0x14

    add-int/2addr v5, v0

    int-to-float v5, v5

    iget v6, p0, Ljava/util/Hashtable;->loadFactor:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    add-int/lit8 v2, v5, 0x3

    .line 1194
    .local v2, "length":I
    if-le v2, v0, :cond_70

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_70

    .line 1195
    add-int/lit8 v2, v2, -0x1

    .line 1196
    :cond_70
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1197
    new-array v5, v2, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1198
    int-to-float v5, v2

    iget v6, p0, Ljava/util/Hashtable;->loadFactor:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x4f000000

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Ljava/util/Hashtable;->threshold:I

    .line 1199
    iput v7, p0, Ljava/util/Hashtable;->count:I

    .line 1202
    :goto_87
    if-lez v0, :cond_99

    .line 1204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1206
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1208
    .local v4, "value":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {p0, v5, v1, v4}, Ljava/util/Hashtable;->reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1202
    add-int/lit8 v0, v0, -0x1

    goto :goto_87

    .line 1210
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_99
    return-void
.end method

.method private reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Hashtable$HashtableEntry",
            "<**>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 1226
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_8

    .line 1227
    new-instance v4, Ljava/io/StreamCorruptedException;

    invoke-direct {v4}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v4

    .line 1231
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 1232
    .local v2, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v2

    array-length v5, p1

    rem-int v3, v4, v5

    .line 1233
    .local v3, "index":I
    aget-object v0, p1, v3

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_15
    if-eqz v0, :cond_2c

    .line 1234
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v2, :cond_29

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1235
    new-instance v4, Ljava/io/StreamCorruptedException;

    invoke-direct {v4}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v4

    .line 1233
    :cond_29
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_15

    .line 1240
    :cond_2c
    aget-object v1, p1, v3

    .line 1241
    .local v1, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    new-instance v4, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v4, v2, p2, p3, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    aput-object v4, p1, v3

    .line 1242
    iget v4, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Hashtable;->count:I

    .line 1243
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 9
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 1136
    .local v1, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 1138
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1141
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1142
    iget v4, p0, Ljava/util/Hashtable;->count:I

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1145
    const/4 v3, 0x0

    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v3, "index":I
    :goto_11
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    if-ge v3, v4, :cond_2f

    .line 1146
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v0, v4, v3
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_3f

    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    move-object v2, v1

    .line 1148
    .local v2, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1b
    if-eqz v0, :cond_2b

    .line 1150
    :try_start_1d
    new-instance v1, Ljava/util/Hashtable$HashtableEntry;

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v4, v5, v2}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_43

    .line 1151
    .end local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v1, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_27
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_3f

    move-object v2, v1

    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_1b

    .line 1145
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    move-object v1, v2

    .end local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_11

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2f
    monitor-exit p0

    .line 1157
    :goto_30
    if-eqz v1, :cond_42

    .line 1158
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1159
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1160
    iget-object v1, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .restart local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_30

    .line 1136
    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "index":I
    :catchall_3f
    move-exception v4

    :goto_40
    monitor-exit p0

    throw v4

    .line 1162
    .restart local v3    # "index":I
    :cond_42
    return-void

    .line 1136
    .restart local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .restart local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catchall_43
    move-exception v4

    move-object v1, v2

    .end local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_40
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 532
    :try_start_1
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 533
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v2, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Hashtable;->modCount:I

    .line 534
    array-length v0, v1

    .local v0, "index":I
    :goto_a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 535
    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_a

    .end local v0    # "index":I
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_12
    move-exception v2

    monitor-exit p0

    throw v2

    .line 536
    .restart local v0    # "index":I
    .restart local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_15
    const/4 v2, 0x0

    :try_start_16
    iput v2, p0, Ljava/util/Hashtable;->count:I
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_12

    monitor-exit p0

    .line 537
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 8

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v5, 0x0

    monitor-enter p0

    .line 548
    :try_start_2
    invoke-super {p0}, Ljava/util/Dictionary;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 549
    .local v3, "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    new-array v4, v4, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v4, v3, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 550
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v1, v4

    .local v1, "i":I
    :goto_12
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_2e

    .line 551
    iget-object v6, v3, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2c

    .line 552
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/Hashtable$HashtableEntry;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable$HashtableEntry;

    .line 551
    :goto_28
    aput-object v4, v6, v2

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_12

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_2c
    move-object v4, v5

    .line 552
    goto :goto_28

    .line 554
    :cond_2e
    const/4 v4, 0x0

    iput-object v4, v3, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 555
    const/4 v4, 0x0

    iput-object v4, v3, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 556
    const/4 v4, 0x0

    iput-object v4, v3, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 557
    const/4 v4, 0x0

    iput v4, v3, Ljava/util/Hashtable;->modCount:I
    :try_end_3a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_3a} :catch_3c
    .catchall {:try_start_2 .. :try_end_3a} :catchall_43

    monitor-exit p0

    .line 558
    return-object v3

    .line 559
    .end local v2    # "i":I
    .end local v3    # "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    :catch_3c
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_3d
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_43

    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_43
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 1055
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1058
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1059
    .local v1, "hash":I
    const v6, 0x7fffffff

    and-int/2addr v6, v1

    array-length v7, v5

    rem-int v2, v6, v7

    .line 1061
    .local v2, "index":I
    aget-object v0, v5, v2

    .line 1062
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    :goto_14
    if-eqz v0, :cond_4d

    .line 1063
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_49

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1064
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p2, p1, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1065
    .local v3, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_46

    .line 1066
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 1067
    if-eqz v4, :cond_3e

    .line 1068
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 1072
    :goto_36
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_43

    :goto_3c
    monitor-exit p0

    .line 1076
    return-object v3

    .line 1070
    :cond_3e
    :try_start_3e
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v5, v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_36

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "newValue":Ljava/lang/Object;, "TV;"
    .end local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_43
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1074
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "newValue":Ljava/lang/Object;, "TV;"
    .restart local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_46
    :try_start_46
    iput-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    goto :goto_3c

    .line 1062
    .end local v3    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_49
    move-object v4, v0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_14

    .line 1080
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_4d
    const/4 v6, 0x0

    invoke-interface {p2, p1, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1081
    .restart local v3    # "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_57

    .line 1082
    invoke-direct {p0, v1, p1, v3, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_43

    :cond_57
    monitor-exit p0

    .line 1085
    return-object v3
.end method

.method public declared-synchronized computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    monitor-enter p0

    .line 1002
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1005
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1006
    .local v1, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v1

    array-length v6, v4

    rem-int v2, v5, v6

    .line 1008
    .local v2, "index":I
    aget-object v0, v4, v2

    .line 1009
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v0, :cond_28

    .line 1010
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_25

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1012
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_33

    monitor-exit p0

    return-object v5

    .line 1009
    :cond_25
    :try_start_25
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_13

    .line 1016
    :cond_28
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1017
    .local v3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_31

    .line 1018
    invoke-direct {p0, v1, p1, v3, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_33

    :cond_31
    monitor-exit p0

    .line 1021
    return-object v3

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "newValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_33
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    const/4 v8, 0x0

    monitor-enter p0

    .line 1026
    :try_start_2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1029
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1030
    .local v1, "hash":I
    const v6, 0x7fffffff

    and-int/2addr v6, v1

    array-length v7, v5

    rem-int v2, v6, v7

    .line 1032
    .local v2, "index":I
    aget-object v0, v5, v2

    .line 1033
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    :goto_15
    if-eqz v0, :cond_4e

    .line 1034
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_4a

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 1035
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p2, p1, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1036
    .local v3, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_47

    .line 1037
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 1038
    if-eqz v4, :cond_3f

    .line 1039
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 1043
    :goto_37
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_44

    :goto_3d
    monitor-exit p0

    .line 1047
    return-object v3

    .line 1041
    :cond_3f
    :try_start_3f
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v5, v2
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_44

    goto :goto_37

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "newValue":Ljava/lang/Object;, "TV;"
    .end local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_44
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1045
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "newValue":Ljava/lang/Object;, "TV;"
    .restart local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_47
    :try_start_47
    iput-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    goto :goto_3d

    .line 1033
    .end local v3    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_4a
    move-object v4, v0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_44

    goto :goto_15

    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_4e
    monitor-exit p0

    .line 1050
    return-object v8
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v5, 0x0

    monitor-enter p0

    .line 294
    if-nez p1, :cond_d

    .line 295
    :try_start_4
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_a

    :catchall_a
    move-exception v4

    monitor-exit p0

    throw v4

    .line 298
    :cond_d
    :try_start_d
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 299
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    array-length v1, v3

    .local v1, "i":I
    :goto_10
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_28

    .line 300
    aget-object v0, v3, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_16
    if-eqz v0, :cond_26

    .line 301
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_a

    move-result v4

    if-eqz v4, :cond_23

    .line 302
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 300
    :cond_23
    :try_start_23
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_a

    goto :goto_16

    :cond_26
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_10

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_28
    monitor-exit p0

    .line 306
    return v5
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 336
    :try_start_1
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 337
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 338
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 339
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_10
    if-eqz v0, :cond_24

    .line 340
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_21

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_27

    move-result v4

    if-eqz v4, :cond_21

    .line 341
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 339
    :cond_21
    :try_start_21
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_27

    goto :goto_10

    .line 344
    :cond_24
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_27
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 322
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 274
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 683
    new-instance v0, Ljava/util/Hashtable$EntrySet;

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$EntrySet;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 684
    :cond_10
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v11, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    .line 796
    if-ne p1, p0, :cond_7

    monitor-exit p0

    .line 797
    return v11

    .line 799
    :cond_7
    :try_start_7
    instance-of v8, p1, Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_5f

    if-nez v8, :cond_d

    monitor-exit p0

    .line 800
    return v9

    .line 801
    :cond_d
    :try_start_d
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 802
    .local v4, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_5f

    move-result v10

    if-eq v8, v10, :cond_1d

    monitor-exit p0

    .line 803
    return v9

    .line 806
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 807
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 808
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 809
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 810
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 811
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-nez v7, :cond_4b

    .line 812
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_49

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_44} :catch_5a
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_44} :catch_57
    .catchall {:try_start_1d .. :try_end_44} :catchall_5f

    move-result v8

    :goto_45
    if-nez v8, :cond_25

    monitor-exit p0

    .line 813
    return v9

    :cond_49
    move v8, v9

    .line 812
    goto :goto_45

    .line 815
    :cond_4b
    :try_start_4b
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_52} :catch_5a
    .catch Ljava/lang/NullPointerException; {:try_start_4b .. :try_end_52} :catch_57
    .catchall {:try_start_4b .. :try_end_52} :catchall_5f

    move-result v8

    if-nez v8, :cond_25

    monitor-exit p0

    .line 816
    return v9

    .line 821
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :catch_57
    move-exception v6

    .local v6, "unused":Ljava/lang/NullPointerException;
    monitor-exit p0

    .line 822
    return v9

    .line 819
    .end local v6    # "unused":Ljava/lang/NullPointerException;
    :catch_5a
    move-exception v5

    .local v5, "unused":Ljava/lang/ClassCastException;
    monitor-exit p0

    .line 820
    return v9

    .end local v5    # "unused":Ljava/lang/ClassCastException;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_5d
    monitor-exit p0

    .line 825
    return v11

    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v4    # "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catchall_5f
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized forEach(Ljava/util/function/BiConsumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    monitor-enter p0

    .line 873
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget v1, p0, Ljava/util/Hashtable;->modCount:I

    .line 877
    .local v1, "expectedModCount":I
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 878
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    const/4 v3, 0x0

    array-length v4, v2

    :goto_a
    if-ge v3, v4, :cond_29

    aget-object v0, v2, v3

    .line 879
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_e
    if-eqz v0, :cond_26

    .line 880
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 881
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 883
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    if-eq v1, v5, :cond_e

    .line 884
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_23

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "expectedModCount":I
    .end local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3

    .line 878
    .restart local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .restart local v1    # "expectedModCount":I
    .restart local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_29
    monitor-exit p0

    .line 888
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x0

    monitor-enter p0

    .line 364
    :try_start_2
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 365
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 366
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 367
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_11
    if-eqz v0, :cond_26

    .line 368
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_23

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 369
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_28

    monitor-exit p0

    return-object v4

    .line 367
    :cond_23
    :try_start_23
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_28

    goto :goto_11

    :cond_26
    monitor-exit p0

    .line 372
    return-object v6

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_28
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 866
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_b

    move-result-object v0

    .line 867
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_9

    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :goto_7
    monitor-exit p0

    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_9
    move-object p2, v0

    goto :goto_7

    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hashCode()I
    .registers 7

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v3, 0x0

    monitor-enter p0

    .line 846
    const/4 v1, 0x0

    .line 847
    .local v1, "h":I
    :try_start_3
    iget v4, p0, Ljava/util/Hashtable;->count:I

    if-eqz v4, :cond_e

    iget v4, p0, Ljava/util/Hashtable;->loadFactor:F
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_30

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_10

    :cond_e
    monitor-exit p0

    .line 848
    return v3

    .line 850
    :cond_10
    :try_start_10
    iget v4, p0, Ljava/util/Hashtable;->loadFactor:F

    neg-float v4, v4

    iput v4, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 851
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 852
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    array-length v4, v2

    :goto_18
    if-ge v3, v4, :cond_29

    aget-object v0, v2, v3

    .line 853
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_1c
    if-eqz v0, :cond_26

    .line 854
    invoke-virtual {v0}, Ljava/util/Hashtable$HashtableEntry;->hashCode()I

    move-result v5

    add-int/2addr v1, v5

    .line 855
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1c

    .line 852
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 859
    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_29
    iget v3, p0, Ljava/util/Hashtable;->loadFactor:F

    neg-float v3, v3

    iput v3, p0, Ljava/util/Hashtable;->loadFactor:F
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_30

    monitor-exit p0

    .line 861
    return v1

    .end local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isEmpty()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v0, 0x0

    monitor-enter p0

    .line 246
    :try_start_2
    iget v1, p0, Ljava/util/Hashtable;->count:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_9

    if-nez v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 643
    new-instance v0, Ljava/util/Hashtable$KeySet;

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$KeySet;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 644
    :cond_10
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 259
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    monitor-enter p0

    .line 1090
    :try_start_1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1093
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1094
    .local v1, "hash":I
    const v6, 0x7fffffff

    and-int/2addr v6, v1

    array-length v7, v5

    rem-int v2, v6, v7

    .line 1096
    .local v2, "index":I
    aget-object v0, v5, v2

    .line 1097
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    :goto_14
    if-eqz v0, :cond_4d

    .line 1098
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_49

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1099
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p3, v6, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1100
    .local v3, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_46

    .line 1101
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 1102
    if-eqz v4, :cond_3e

    .line 1103
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 1107
    :goto_36
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_43

    :goto_3c
    monitor-exit p0

    .line 1111
    return-object v3

    .line 1105
    :cond_3e
    :try_start_3e
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v5, v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_36

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "newValue":Ljava/lang/Object;, "TV;"
    .end local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_43
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1109
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "newValue":Ljava/lang/Object;, "TV;"
    .restart local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_46
    :try_start_46
    iput-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    goto :goto_3c

    .line 1097
    .end local v3    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_49
    move-object v4, v0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_14

    .line 1115
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_4d
    if-eqz p2, :cond_52

    .line 1116
    invoke-direct {p0, v1, p1, p2, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_43

    :cond_52
    monitor-exit p0

    .line 1119
    return-object p2
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    monitor-enter p0

    .line 460
    if-nez p2, :cond_d

    .line 461
    :try_start_4
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_a

    :catchall_a
    move-exception v5

    monitor-exit p0

    throw v5

    .line 465
    :cond_d
    :try_start_d
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 466
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 467
    .local v1, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v1

    array-length v6, v4

    rem-int v2, v5, v6

    .line 469
    .local v2, "index":I
    aget-object v0, v4, v2

    .line 470
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1c
    if-eqz v0, :cond_33

    .line 471
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_30

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 472
    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 473
    .local v3, "old":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_a

    monitor-exit p0

    .line 474
    return-object v3

    .line 470
    .end local v3    # "old":Ljava/lang/Object;, "TV;"
    :cond_30
    :try_start_30
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1c

    .line 478
    :cond_33
    invoke-direct {p0, v1, p1, p2, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_a

    monitor-exit p0

    .line 479
    return-object v7
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    .line 524
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 525
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_9

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_24
    monitor-exit p0

    .line 526
    return-void
.end method

.method public declared-synchronized putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    monitor-enter p0

    .line 913
    :try_start_2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 917
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 918
    .local v1, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v1

    array-length v6, v4

    rem-int v2, v5, v6

    .line 920
    .local v2, "index":I
    aget-object v0, v4, v2

    .line 921
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_14
    if-eqz v0, :cond_2d

    .line 922
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_2a

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 923
    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 924
    .local v3, "old":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_28

    .line 925
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_32

    :cond_28
    monitor-exit p0

    .line 927
    return-object v3

    .line 921
    .end local v3    # "old":Ljava/lang/Object;, "TV;"
    :cond_2a
    :try_start_2a
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_14

    .line 931
    :cond_2d
    invoke-direct {p0, v1, p1, p2, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_32

    monitor-exit p0

    .line 932
    return-object v7

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_32
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected rehash()V
    .registers 12

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const v10, 0x7ffffff7

    .line 392
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v7, v9

    .line 393
    .local v7, "oldCapacity":I
    iget-object v8, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 396
    .local v8, "oldMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    shl-int/lit8 v9, v7, 0x1

    add-int/lit8 v4, v9, 0x1

    .line 397
    .local v4, "newCapacity":I
    sub-int v9, v4, v10

    if-lez v9, :cond_16

    .line 398
    if-ne v7, v10, :cond_13

    .line 400
    return-void

    .line 401
    :cond_13
    const v4, 0x7ffffff7

    .line 403
    :cond_16
    new-array v5, v4, [Ljava/util/Hashtable$HashtableEntry;

    .line 405
    .local v5, "newMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v9, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljava/util/Hashtable;->modCount:I

    .line 406
    int-to-float v9, v4

    iget v10, p0, Ljava/util/Hashtable;->loadFactor:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x4f000000

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Ljava/util/Hashtable;->threshold:I

    .line 407
    iput-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 409
    move v1, v7

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2f
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4b

    .line 410
    aget-object v6, v8, v1

    .local v6, "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_35
    if-eqz v6, :cond_49

    .line 411
    move-object v0, v6

    .line 412
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v6, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 414
    iget v9, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    .line 415
    .local v3, "index":I
    aget-object v9, v5, v3

    iput-object v9, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 416
    aput-object v0, v5, v3

    goto :goto_35

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v3    # "index":I
    :cond_49
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2f

    .line 419
    .end local v2    # "i":I
    .end local v6    # "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "i":I
    :cond_4b
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v8, 0x0

    monitor-enter p0

    .line 492
    :try_start_2
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 493
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 494
    .local v1, "hash":I
    const v6, 0x7fffffff

    and-int/2addr v6, v1

    array-length v7, v5

    rem-int v2, v6, v7

    .line 496
    .local v2, "index":I
    aget-object v0, v5, v2

    .line 497
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    :goto_12
    if-eqz v0, :cond_45

    .line 498
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_41

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 499
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 500
    if-eqz v4, :cond_39

    .line 501
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 505
    :goto_2c
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I

    .line 506
    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 507
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    iput-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_3e

    monitor-exit p0

    .line 508
    return-object v3

    .line 503
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_39
    :try_start_39
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v5, v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3e

    goto :goto_2c

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_3e
    move-exception v6

    monitor-exit p0

    throw v6

    .line 497
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_41
    move-object v4, v0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_42
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_3e

    goto :goto_12

    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_45
    monitor-exit p0

    .line 511
    return-object v8
.end method

.method public declared-synchronized remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 937
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 940
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 941
    .local v1, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v1

    array-length v6, v4

    rem-int v2, v5, v6

    .line 943
    .local v2, "index":I
    aget-object v0, v4, v2

    .line 944
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    :goto_14
    if-eqz v0, :cond_4e

    .line 945
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_4a

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 946
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 947
    if-eqz v3, :cond_42

    .line 948
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 952
    :goto_36
    iget v5, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/Hashtable;->count:I

    .line 953
    const/4 v5, 0x0

    iput-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_47

    .line 954
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .line 950
    :cond_42
    :try_start_42
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v4, v2
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_47

    goto :goto_36

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_47
    move-exception v5

    monitor-exit p0

    throw v5

    .line 944
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_4a
    move-object v3, v0

    .local v3, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_4b
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_47

    goto :goto_14

    .line 957
    .end local v3    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_4e
    const/4 v5, 0x0

    monitor-exit p0

    return v5
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    monitor-enter p0

    .line 984
    :try_start_2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 986
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 987
    .local v1, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v1

    array-length v6, v4

    rem-int v2, v5, v6

    .line 989
    .local v2, "index":I
    aget-object v0, v4, v2

    .line 990
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_14
    if-eqz v0, :cond_2b

    .line 991
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_28

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 992
    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 993
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_2d

    monitor-exit p0

    .line 994
    return-object v3

    .line 990
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_28
    :try_start_28
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2d

    goto :goto_14

    :cond_2b
    monitor-exit p0

    .line 997
    return-object v7

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_2d
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    monitor-enter p0

    .line 962
    :try_start_2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 965
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 966
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 968
    .local v2, "index":I
    aget-object v0, v3, v2

    .line 969
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_17
    if-eqz v0, :cond_37

    .line 970
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_34

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 971
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 972
    iput-object p3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_39

    .line 973
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    :cond_32
    monitor-exit p0

    .line 975
    return v6

    .line 969
    :cond_34
    :try_start_34
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_39

    goto :goto_17

    :cond_37
    monitor-exit p0

    .line 979
    return v6

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_39
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized replaceAll(Ljava/util/function/BiFunction;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 893
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget v1, p0, Ljava/util/Hashtable;->modCount:I

    .line 897
    .local v1, "expectedModCount":I
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 898
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    array-length v4, v2

    :goto_a
    if-ge v3, v4, :cond_30

    aget-object v0, v2, v3

    .line 899
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_e
    if-eqz v0, :cond_2d

    .line 901
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 900
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 902
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 904
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    if-eq v1, v5, :cond_e

    .line 905
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2a

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "expectedModCount":I
    .end local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 898
    .restart local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "expectedModCount":I
    .restart local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_30
    monitor-exit p0

    .line 909
    return-void
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 236
    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 9

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 576
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 577
    .local v4, "max":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_f

    .line 578
    const-string/jumbo v7, "{}"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_66

    monitor-exit p0

    return-object v7

    .line 580
    :cond_f
    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 583
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/16 v7, 0x7b

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    const/4 v1, 0x0

    .line 585
    .local v1, "i":I
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 586
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 587
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 588
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-ne v3, p0, :cond_53

    const-string/jumbo v7, "(this Map)"

    :goto_35
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const/16 v7, 0x3d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    if-ne v6, p0, :cond_58

    const-string/jumbo v7, "(this Map)"

    :goto_42
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    if-ne v1, v4, :cond_5d

    .line 593
    const/16 v7, 0x7d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_66

    move-result-object v7

    monitor-exit p0

    return-object v7

    .line 588
    :cond_53
    :try_start_53
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_35

    .line 590
    :cond_58
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_42

    .line 594
    :cond_5d
    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_66

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "max":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :catchall_66
    move-exception v7

    monitor-exit p0

    throw v7
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 763
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    if-nez v0, :cond_10

    .line 764
    new-instance v0, Ljava/util/Hashtable$ValueCollection;

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueCollection;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$ValueCollection;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 766
    :cond_10
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    return-object v0
.end method
