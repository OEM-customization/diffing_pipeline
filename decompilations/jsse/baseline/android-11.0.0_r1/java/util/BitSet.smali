.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ADDRESS_BITS_PER_WORD:I = 0x6

.field private static final greylist-max-o BITS_PER_WORD:I = 0x40

.field private static final greylist-max-o BIT_INDEX_MASK:I = 0x3f

.field private static final greylist-max-o WORD_MASK:J = -0x1L

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private transient greylist-max-o sizeIsSticky:Z

.field private greylist-max-o words:[J

.field private transient greylist-max-o wordsInUse:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 65
    nop

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, [J

    const-string v4, "bits"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/BitSet;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 103
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 143
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Ljava/util/BitSet;->initWords(I)V

    .line 144
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 145
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 5
    .param p1, "nbits"    # I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 103
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 158
    if-ltz p1, :cond_11

    .line 161
    invoke-direct {p0, p1}, Ljava/util/BitSet;->initWords(I)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 163
    return-void

    .line 159
    :cond_11
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nbits < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>([J)V
    .registers 3
    .param p1, "words"    # [J

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 103
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 174
    iput-object p1, p0, Ljava/util/BitSet;->words:[J

    .line 175
    array-length v0, p1

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 176
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 177
    return-void
.end method

.method private greylist-max-o checkInvariants()V
    .registers 1

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    return-void
.end method

.method private static greylist-max-o checkRange(II)V
    .registers 5
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I

    .line 361
    if-ltz p0, :cond_3d

    .line 363
    if-ltz p1, :cond_26

    .line 365
    if-gt p0, p1, :cond_7

    .line 368
    return-void

    .line 366
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_26
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_3d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 4
    .param p1, "wordsRequired"    # I

    .line 334
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v0

    if-ge v1, p1, :cond_17

    .line 336
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 337
    .local v0, "request":I
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 340
    .end local v0    # "request":I
    :cond_17
    return-void
.end method

.method private greylist-max-o expandTo(I)V
    .registers 4
    .param p1, "wordIndex"    # I

    .line 350
    add-int/lit8 v0, p1, 0x1

    .line 351
    .local v0, "wordsRequired":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v0, :cond_b

    .line 352
    invoke-direct {p0, v0}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 353
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 355
    :cond_b
    return-void
.end method

.method private greylist-max-o initWords(I)V
    .registers 3
    .param p1, "nbits"    # I

    .line 166
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    .line 167
    return-void
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

    .line 1146
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1147
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "bits"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    .line 1152
    array-length v1, v1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 1153
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 1154
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v2, v1

    const/4 v3, 0x1

    if-lez v2, :cond_26

    array-length v2, v1

    sub-int/2addr v2, v3

    aget-wide v1, v1, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    iput-boolean v3, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 1155
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1156
    return-void
.end method

.method private greylist-max-o recalculateWordsInUse()V
    .registers 6

    .line 132
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_14

    .line 133
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    .line 134
    goto :goto_14

    .line 132
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 136
    :cond_14
    :goto_14
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 137
    return-void
.end method

.method private greylist-max-o trimToSize()V
    .registers 4

    .line 1116
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v2, v1

    if-eq v0, v2, :cond_10

    .line 1117
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    .line 1118
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1120
    :cond_10
    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;
    .registers 12
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .line 269
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .local v0, "n":I
    :goto_e
    if-lez v0, :cond_1b

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 273
    :cond_1b
    add-int/lit8 v1, v0, 0x7

    const/16 v2, 0x8

    div-int/2addr v1, v2

    new-array v1, v1, [J

    .line 274
    .local v1, "words":[J
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 275
    const/4 v3, 0x0

    .line 276
    .local v3, "i":I
    :goto_26
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v2, :cond_36

    .line 277
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    aput-wide v5, v1, v3

    move v3, v4

    goto :goto_26

    .line 278
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .local v2, "remaining":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3b
    if-ge v4, v2, :cond_50

    .line 279
    aget-wide v5, v1, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    mul-int/lit8 v9, v4, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v5, v7

    aput-wide v5, v1, v3

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 280
    .end local v2    # "remaining":I
    .end local v4    # "j":I
    :cond_50
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>([J)V

    return-object v2
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/nio/LongBuffer;)Ljava/util/BitSet;
    .registers 6
    .param p0, "lb"    # Ljava/nio/LongBuffer;

    .line 221
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->slice()Ljava/nio/LongBuffer;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    .local v0, "n":I
    :goto_8
    if-lez v0, :cond_19

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 225
    :cond_19
    new-array v1, v0, [J

    .line 226
    .local v1, "words":[J
    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 227
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>([J)V

    return-object v2
.end method

.method public static whitelist core-platform-api test-api valueOf([B)Ljava/util/BitSet;
    .registers 2
    .param p0, "bytes"    # [B

    .line 247
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf([J)Ljava/util/BitSet;
    .registers 6
    .param p0, "longs"    # [J

    .line 197
    array-length v0, p0

    .local v0, "n":I
    :goto_1
    if-lez v0, :cond_10

    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 199
    :cond_10
    new-instance v1, Ljava/util/BitSet;

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>([J)V

    return-object v1
.end method

.method private static greylist-max-o wordIndex(I)I
    .registers 2
    .param p0, "bitIndex"    # I

    .line 112
    shr-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1129
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1131
    iget-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v0, :cond_a

    .line 1132
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    .line 1134
    :cond_a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1135
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    const-string v2, "bits"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1137
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api and(Ljava/util/BitSet;)V
    .registers 8
    .param p1, "set"    # Ljava/util/BitSet;

    .line 913
    if-ne p0, p1, :cond_3

    .line 914
    return-void

    .line 916
    :cond_3
    :goto_3
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    if-le v0, v1, :cond_14

    .line 917
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    goto :goto_3

    .line 920
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_27

    .line 921
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 920
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 923
    .end local v0    # "i":I
    :cond_27
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 924
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 925
    return-void
.end method

.method public whitelist core-platform-api test-api andNot(Ljava/util/BitSet;)V
    .registers 8
    .param p1, "set"    # Ljava/util/BitSet;

    .line 1007
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1b

    .line 1008
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 1007
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1010
    .end local v0    # "i":I
    :cond_1b
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 1011
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1012
    return-void
.end method

.method public whitelist core-platform-api test-api cardinality()I
    .registers 5

    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_12

    .line 899
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 898
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 900
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public whitelist core-platform-api test-api clear()V
    .registers 5

    .line 607
    :goto_0
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lez v0, :cond_f

    .line 608
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    goto :goto_0

    .line 609
    :cond_f
    return-void
.end method

.method public whitelist core-platform-api test-api clear(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .line 539
    if-ltz p1, :cond_1d

    .line 542
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 543
    .local v0, "wordIndex":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_b

    .line 544
    return-void

    .line 546
    :cond_b
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 548
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 549
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 550
    return-void

    .line 540
    .end local v0    # "wordIndex":I
    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api clear(II)V
    .registers 14
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 564
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 566
    if-ne p1, p2, :cond_6

    .line 567
    return-void

    .line 569
    :cond_6
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 570
    .local v0, "startWordIndex":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_f

    .line 571
    return-void

    .line 573
    :cond_f
    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 574
    .local v1, "endWordIndex":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v1, v2, :cond_21

    .line 575
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result p2

    .line 576
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v1, v2, -0x1

    .line 579
    :cond_21
    const-wide/16 v2, -0x1

    shl-long v4, v2, p1

    .line 580
    .local v4, "firstWordMask":J
    neg-int v6, p2

    ushr-long/2addr v2, v6

    .line 581
    .local v2, "lastWordMask":J
    if-ne v0, v1, :cond_34

    .line 583
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v0

    and-long v9, v4, v2

    not-long v9, v9

    and-long/2addr v7, v9

    aput-wide v7, v6, v0

    goto :goto_51

    .line 587
    :cond_34
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v0

    not-long v9, v4

    and-long/2addr v7, v9

    aput-wide v7, v6, v0

    .line 590
    add-int/lit8 v6, v0, 0x1

    .local v6, "i":I
    :goto_3e
    if-ge v6, v1, :cond_49

    .line 591
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v6

    .line 590
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 594
    .end local v6    # "i":I
    :cond_49
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v1

    not-long v9, v2

    and-long/2addr v7, v9

    aput-wide v7, v6, v1

    .line 597
    :goto_51
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 598
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 599
    return-void
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 1097
    iget-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v0, :cond_7

    .line 1098
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    .line 1101
    :cond_7
    :try_start_7
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 1102
    .local v0, "result":Ljava/util/BitSet;
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ljava/util/BitSet;->words:[J

    .line 1103
    invoke-direct {v0}, Ljava/util/BitSet;->checkInvariants()V
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1a} :catch_1b

    .line 1104
    return-object v0

    .line 1105
    .end local v0    # "result":Ljava/util/BitSet;
    :catch_1b
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1066
    instance-of v0, p1, Ljava/util/BitSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1067
    return v1

    .line 1068
    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    .line 1069
    return v0

    .line 1071
    :cond_a
    move-object v2, p1

    check-cast v2, Ljava/util/BitSet;

    .line 1073
    .local v2, "set":Ljava/util/BitSet;
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1074
    invoke-direct {v2}, Ljava/util/BitSet;->checkInvariants()V

    .line 1076
    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v4, v2, Ljava/util/BitSet;->wordsInUse:I

    if-eq v3, v4, :cond_1a

    .line 1077
    return v1

    .line 1080
    :cond_1a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v3, v4, :cond_2f

    .line 1081
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v3

    iget-object v6, v2, Ljava/util/BitSet;->words:[J

    aget-wide v6, v6, v3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2c

    .line 1082
    return v1

    .line 1080
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1084
    .end local v3    # "i":I
    :cond_2f
    return v0
.end method

.method public whitelist core-platform-api test-api flip(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .line 379
    if-ltz p1, :cond_1a

    .line 382
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 383
    .local v0, "wordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 385
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 387
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 388
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 389
    return-void

    .line 380
    .end local v0    # "wordIndex":I
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api flip(II)V
    .registers 14
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 404
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 406
    if-ne p1, p2, :cond_6

    .line 407
    return-void

    .line 409
    :cond_6
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 410
    .local v0, "startWordIndex":I
    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 411
    .local v1, "endWordIndex":I
    invoke-direct {p0, v1}, Ljava/util/BitSet;->expandTo(I)V

    .line 413
    const-wide/16 v2, -0x1

    shl-long v4, v2, p1

    .line 414
    .local v4, "firstWordMask":J
    neg-int v6, p2

    ushr-long/2addr v2, v6

    .line 415
    .local v2, "lastWordMask":J
    if-ne v0, v1, :cond_25

    .line 417
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v0

    and-long v9, v4, v2

    xor-long/2addr v7, v9

    aput-wide v7, v6, v0

    goto :goto_41

    .line 421
    :cond_25
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v0

    xor-long/2addr v7, v4

    aput-wide v7, v6, v0

    .line 424
    add-int/lit8 v6, v0, 0x1

    .local v6, "i":I
    :goto_2e
    if-ge v6, v1, :cond_3a

    .line 425
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    not-long v8, v8

    aput-wide v8, v7, v6

    .line 424
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 428
    .end local v6    # "i":I
    :cond_3a
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v1

    xor-long/2addr v7, v2

    aput-wide v7, v6, v1

    .line 431
    :goto_41
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 432
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 433
    return-void
.end method

.method public whitelist core-platform-api test-api get(II)Ljava/util/BitSet;
    .registers 20
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 645
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p1 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 647
    invoke-direct/range {p0 .. p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 649
    invoke-virtual/range {p0 .. p0}, Ljava/util/BitSet;->length()I

    move-result v3

    .line 652
    .local v3, "len":I
    const/4 v4, 0x0

    if-le v3, v1, :cond_85

    if-ne v1, v2, :cond_17

    goto/16 :goto_85

    .line 656
    :cond_17
    if-le v2, v3, :cond_1a

    .line 657
    move v2, v3

    .line 659
    .end local p2    # "toIndex":I
    .local v2, "toIndex":I
    :cond_1a
    new-instance v5, Ljava/util/BitSet;

    sub-int v6, v2, v1

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    .line 660
    .local v5, "result":Ljava/util/BitSet;
    sub-int v6, v2, v1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    add-int/2addr v6, v7

    .line 661
    .local v6, "targetWords":I
    invoke-static/range {p1 .. p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v8

    .line 662
    .local v8, "sourceIndex":I
    and-int/lit8 v9, v1, 0x3f

    if-nez v9, :cond_33

    move v4, v7

    .line 665
    .local v4, "wordAligned":Z
    :cond_33
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_34
    add-int/lit8 v9, v6, -0x1

    if-ge v7, v9, :cond_55

    .line 666
    iget-object v9, v5, Ljava/util/BitSet;->words:[J

    if-eqz v4, :cond_41

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v8

    goto :goto_4e

    .line 667
    :cond_41
    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v11, v10, v8

    ushr-long/2addr v11, v1

    add-int/lit8 v13, v8, 0x1

    aget-wide v13, v10, v13

    neg-int v10, v1

    shl-long/2addr v13, v10

    or-long v10, v11, v13

    :goto_4e
    aput-wide v10, v9, v7

    .line 665
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 671
    .end local v7    # "i":I
    :cond_55
    const-wide/16 v9, -0x1

    neg-int v7, v2

    ushr-long/2addr v9, v7

    .line 672
    .local v9, "lastWordMask":J
    iget-object v7, v5, Ljava/util/BitSet;->words:[J

    add-int/lit8 v11, v6, -0x1

    .line 673
    add-int/lit8 v12, v2, -0x1

    and-int/lit8 v12, v12, 0x3f

    and-int/lit8 v13, v1, 0x3f

    if-ge v12, v13, :cond_74

    .line 675
    iget-object v12, v0, Ljava/util/BitSet;->words:[J

    aget-wide v13, v12, v8

    ushr-long/2addr v13, v1

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, v12, v15

    and-long/2addr v15, v9

    neg-int v12, v1

    shl-long/2addr v15, v12

    or-long v12, v13, v15

    goto :goto_7a

    .line 678
    :cond_74
    iget-object v12, v0, Ljava/util/BitSet;->words:[J

    aget-wide v12, v12, v8

    and-long/2addr v12, v9

    ushr-long/2addr v12, v1

    :goto_7a
    aput-wide v12, v7, v11

    .line 681
    iput v6, v5, Ljava/util/BitSet;->wordsInUse:I

    .line 682
    invoke-direct {v5}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 683
    invoke-direct {v5}, Ljava/util/BitSet;->checkInvariants()V

    .line 685
    return-object v5

    .line 653
    .end local v2    # "toIndex":I
    .end local v4    # "wordAligned":Z
    .end local v5    # "result":Ljava/util/BitSet;
    .end local v6    # "targetWords":I
    .end local v8    # "sourceIndex":I
    .end local v9    # "lastWordMask":J
    .restart local p2    # "toIndex":I
    :cond_85
    :goto_85
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v4}, Ljava/util/BitSet;-><init>(I)V

    return-object v5
.end method

.method public whitelist core-platform-api test-api get(I)Z
    .registers 7
    .param p1, "bitIndex"    # I

    .line 622
    if-ltz p1, :cond_1f

    .line 625
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 627
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 628
    .local v0, "wordIndex":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1

    .line 623
    .end local v0    # "wordIndex":I
    :cond_1f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 8

    .line 1033
    const-wide/16 v0, 0x4d2

    .line 1034
    .local v0, "h":J
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    .local v2, "i":I
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_12

    .line 1035
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v3, v2

    add-int/lit8 v5, v2, 0x1

    int-to-long v5, v5

    mul-long/2addr v3, v5

    xor-long/2addr v0, v3

    goto :goto_4

    .line 1037
    .end local v2    # "i":I
    :cond_12
    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public whitelist core-platform-api test-api intersects(Ljava/util/BitSet;)Z
    .registers 8
    .param p1, "set"    # Ljava/util/BitSet;

    .line 884
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1f

    .line 885
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 886
    return v1

    .line 884
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 887
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api isEmpty()Z
    .registers 2

    .line 871
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic blacklist lambda$stream$0$BitSet()Ljava/util/Spliterator$OfInt;
    .registers 5

    .line 1241
    new-instance v0, Ljava/util/BitSet$1BitSetIterator;

    invoke-direct {v0, p0}, Ljava/util/BitSet$1BitSetIterator;-><init>(Ljava/util/BitSet;)V

    .line 1242
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    int-to-long v1, v1

    .line 1241
    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api length()I
    .registers 5

    .line 856
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v0, :cond_6

    .line 857
    const/4 v0, 0x0

    return v0

    .line 859
    :cond_6
    add-int/lit8 v1, v0, -0x1

    mul-int/lit8 v1, v1, 0x40

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v2, v0

    .line 860
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    add-int/2addr v1, v0

    .line 859
    return v1
.end method

.method public whitelist core-platform-api test-api nextClearBit(I)I
    .registers 7
    .param p1, "fromIndex"    # I

    .line 743
    if-ltz p1, :cond_34

    .line 746
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 748
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 749
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_e

    .line 750
    return p1

    .line 752
    :cond_e
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v1, v1, v0

    not-long v1, v1

    const-wide/16 v3, -0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    .line 755
    .local v1, "word":J
    :goto_17
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_25

    .line 756
    mul-int/lit8 v3, v0, 0x40

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v3, v4

    return v3

    .line 757
    :cond_25
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v3, :cond_2e

    .line 758
    mul-int/lit8 v3, v3, 0x40

    return v3

    .line 759
    :cond_2e
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v3, v0

    not-long v1, v3

    goto :goto_17

    .line 744
    .end local v0    # "u":I
    .end local v1    # "word":J
    :cond_34
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextSetBit(I)I
    .registers 9
    .param p1, "fromIndex"    # I

    .line 711
    if-ltz p1, :cond_31

    .line 714
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 716
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 717
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_f

    .line 718
    return v2

    .line 720
    :cond_f
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v1, v0

    const-wide/16 v5, -0x1

    shl-long/2addr v5, p1

    and-long/2addr v3, v5

    .line 723
    .local v3, "word":J
    :goto_17
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_25

    .line 724
    mul-int/lit8 v1, v0, 0x40

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 725
    :cond_25
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v1, :cond_2c

    .line 726
    return v2

    .line 727
    :cond_2c
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v1, v0

    goto :goto_17

    .line 712
    .end local v0    # "u":I
    .end local v3    # "word":J
    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api or(Ljava/util/BitSet;)V
    .registers 9
    .param p1, "set"    # Ljava/util/BitSet;

    .line 937
    if-ne p0, p1, :cond_3

    .line 938
    return-void

    .line 940
    :cond_3
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 942
    .local v0, "wordsInCommon":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_18

    .line 943
    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 944
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 948
    :cond_18
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_29

    .line 949
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Ljava/util/BitSet;->words:[J

    aget-wide v5, v5, v1

    or-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 948
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 952
    .end local v1    # "i":I
    :cond_29
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_37

    .line 953
    iget-object v1, p1, Ljava/util/BitSet;->words:[J

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 958
    :cond_37
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 959
    return-void
.end method

.method public whitelist core-platform-api test-api previousClearBit(I)I
    .registers 9
    .param p1, "fromIndex"    # I

    .line 823
    const/4 v0, -0x1

    if-gez p1, :cond_1d

    .line 824
    if-ne p1, v0, :cond_6

    .line 825
    return v0

    .line 826
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_1d
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 832
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 833
    .local v1, "u":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v1, v2, :cond_29

    .line 834
    return p1

    .line 836
    :cond_29
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v1

    not-long v2, v2

    const-wide/16 v4, -0x1

    add-int/lit8 v6, p1, 0x1

    neg-int v6, v6

    ushr-long/2addr v4, v6

    and-long/2addr v2, v4

    .line 839
    .local v2, "word":J
    :goto_35
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_47

    .line 840
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    sub-int/2addr v0, v4

    return v0

    .line 841
    :cond_47
    add-int/lit8 v4, v1, -0x1

    .end local v1    # "u":I
    .local v4, "u":I
    if-nez v1, :cond_4c

    .line 842
    return v0

    .line 843
    :cond_4c
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v5, v1, v4

    not-long v2, v5

    move v1, v4

    goto :goto_35
.end method

.method public whitelist core-platform-api test-api previousSetBit(I)I
    .registers 9
    .param p1, "fromIndex"    # I

    .line 785
    const/4 v0, -0x1

    if-gez p1, :cond_1d

    .line 786
    if-ne p1, v0, :cond_6

    .line 787
    return v0

    .line 788
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_1d
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 794
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 795
    .local v1, "u":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v1, v2, :cond_2f

    .line 796
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 798
    :cond_2f
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, -0x1

    add-int/lit8 v6, p1, 0x1

    neg-int v6, v6

    ushr-long/2addr v4, v6

    and-long/2addr v2, v4

    .line 801
    .local v2, "word":J
    :goto_3a
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4c

    .line 802
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    sub-int/2addr v0, v4

    return v0

    .line 803
    :cond_4c
    add-int/lit8 v4, v1, -0x1

    .end local v1    # "u":I
    .local v4, "u":I
    if-nez v1, :cond_51

    .line 804
    return v0

    .line 805
    :cond_51
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v4

    move v1, v4

    goto :goto_3a
.end method

.method public whitelist core-platform-api test-api set(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .line 443
    if-ltz p1, :cond_17

    .line 446
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 447
    .local v0, "wordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 449
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 451
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 452
    return-void

    .line 444
    .end local v0    # "wordIndex":I
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api set(II)V
    .registers 15
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 481
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 483
    if-ne p1, p2, :cond_6

    .line 484
    return-void

    .line 487
    :cond_6
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 488
    .local v0, "startWordIndex":I
    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 489
    .local v1, "endWordIndex":I
    invoke-direct {p0, v1}, Ljava/util/BitSet;->expandTo(I)V

    .line 491
    const-wide/16 v2, -0x1

    shl-long v4, v2, p1

    .line 492
    .local v4, "firstWordMask":J
    neg-int v6, p2

    ushr-long v6, v2, v6

    .line 493
    .local v6, "lastWordMask":J
    if-ne v0, v1, :cond_26

    .line 495
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v2, v0

    and-long v10, v4, v6

    or-long/2addr v8, v10

    aput-wide v8, v2, v0

    goto :goto_3f

    .line 499
    :cond_26
    iget-object v8, p0, Ljava/util/BitSet;->words:[J

    aget-wide v9, v8, v0

    or-long/2addr v9, v4

    aput-wide v9, v8, v0

    .line 502
    add-int/lit8 v8, v0, 0x1

    .local v8, "i":I
    :goto_2f
    if-ge v8, v1, :cond_38

    .line 503
    iget-object v9, p0, Ljava/util/BitSet;->words:[J

    aput-wide v2, v9, v8

    .line 502
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 506
    .end local v8    # "i":I
    :cond_38
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v2, v1

    or-long/2addr v8, v6

    aput-wide v8, v2, v1

    .line 509
    :goto_3f
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 510
    return-void
.end method

.method public whitelist core-platform-api test-api set(IIZ)V
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # Z

    .line 525
    if-eqz p3, :cond_6

    .line 526
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    goto :goto_9

    .line 528
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    .line 529
    :goto_9
    return-void
.end method

.method public whitelist core-platform-api test-api set(IZ)V
    .registers 3
    .param p1, "bitIndex"    # I
    .param p2, "value"    # Z

    .line 463
    if-eqz p2, :cond_6

    .line 464
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_9

    .line 466
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 467
    :goto_9
    return-void
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 1048
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public whitelist core-platform-api test-api stream()Ljava/util/stream/IntStream;
    .registers 4

    .line 1240
    new-instance v0, Ljava/util/-$$Lambda$BitSet$ifk7HV8-2uu42BYsPVrvRaHrugk;

    invoke-direct {v0, p0}, Ljava/util/-$$Lambda$BitSet$ifk7HV8-2uu42BYsPVrvRaHrugk;-><init>(Ljava/util/BitSet;)V

    const/16 v1, 0x4055

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toByteArray()[B
    .registers 12

    .line 297
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 298
    .local v0, "n":I
    if-nez v0, :cond_8

    .line 299
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 300
    :cond_8
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    .line 301
    .local v1, "len":I
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v4, v0, -0x1

    aget-wide v3, v3, v4

    .local v3, "x":J
    :goto_13
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1d

    .line 302
    add-int/lit8 v1, v1, 0x1

    .line 301
    ushr-long/2addr v3, v2

    goto :goto_13

    .line 303
    .end local v3    # "x":J
    :cond_1d
    new-array v3, v1, [B

    .line 304
    .local v3, "bytes":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 305
    .local v4, "bb":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2a
    add-int/lit8 v8, v0, -0x1

    if-ge v7, v8, :cond_38

    .line 306
    iget-object v8, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v8, v7

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 305
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 307
    .end local v7    # "i":I
    :cond_38
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v8, v0, -0x1

    aget-wide v7, v7, v8

    .local v7, "x":J
    :goto_3e
    cmp-long v9, v7, v5

    if-eqz v9, :cond_4c

    .line 308
    const-wide/16 v9, 0xff

    and-long/2addr v9, v7

    long-to-int v9, v9

    int-to-byte v9, v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 307
    ushr-long/2addr v7, v2

    goto :goto_3e

    .line 309
    .end local v7    # "x":J
    :cond_4c
    return-object v3
.end method

.method public whitelist core-platform-api test-api toLongArray()[J
    .registers 3

    .line 326
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 6

    .line 1182
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1184
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    const/16 v1, 0x80

    if-le v0, v1, :cond_e

    .line 1185
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    goto :goto_10

    :cond_e
    mul-int/lit8 v0, v0, 0x40

    .line 1186
    .local v0, "numBits":I
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1187
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1189
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .line 1190
    .local v2, "i":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_47

    .line 1191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1193
    :goto_29
    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_2e

    goto :goto_47

    .line 1194
    :cond_2e
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v2, v3

    if-gez v3, :cond_36

    goto :goto_47

    .line 1195
    :cond_36
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v3

    .line 1196
    .local v3, "endOfRun":I
    :cond_3a
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1197
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_3a

    .line 1198
    .end local v3    # "endOfRun":I
    goto :goto_29

    .line 1201
    :cond_47
    :goto_47
    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist core-platform-api test-api xor(Ljava/util/BitSet;)V
    .registers 9
    .param p1, "set"    # Ljava/util/BitSet;

    .line 976
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 978
    .local v0, "wordsInCommon":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_15

    .line 979
    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 980
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 984
    :cond_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_26

    .line 985
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Ljava/util/BitSet;->words:[J

    aget-wide v5, v5, v1

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 984
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 988
    .end local v1    # "i":I
    :cond_26
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_32

    .line 989
    iget-object v2, p1, Ljava/util/BitSet;->words:[J

    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    :cond_32
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 994
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 995
    return-void
.end method
