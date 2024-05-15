.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ADDRESS_BITS_PER_WORD:I = 0x6

.field private static final BITS_PER_WORD:I = 0x40

.field private static final BIT_INDEX_MASK:I = 0x3f

.field private static final WORD_MASK:J = -0x1L

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private transient sizeIsSticky:Z

.field private words:[J

.field private transient wordsInUse:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-class v0, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/BitSet;->-assertionsDisabled:Z

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 86
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "bits"

    const-class v3, [J

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 85
    sput-object v0, Ljava/util/BitSet;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 103
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 143
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/util/BitSet;->initWords(I)V

    .line 144
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 145
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "nbits"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 103
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 158
    if-gez p1, :cond_24

    .line 159
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nbits < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_24
    invoke-direct {p0, p1}, Ljava/util/BitSet;->initWords(I)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 163
    return-void
.end method

.method private constructor <init>([J)V
    .registers 3
    .param p1, "words"    # [J

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
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

.method private checkInvariants()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 119
    sget-boolean v0, Ljava/util/BitSet;->-assertionsDisabled:Z

    if-nez v0, :cond_1c

    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_1c
    sget-boolean v0, Ljava/util/BitSet;->-assertionsDisabled:Z

    if-nez v0, :cond_31

    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ltz v0, :cond_2b

    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-le v0, v1, :cond_31

    :cond_2b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 121
    :cond_31
    sget-boolean v0, Ljava/util/BitSet;->-assertionsDisabled:Z

    if-nez v0, :cond_4c

    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-eq v0, v1, :cond_4c

    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    aget-wide v0, v0, v1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 122
    :cond_4c
    return-void
.end method

.method private static checkRange(II)V
    .registers 5
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I

    .prologue
    .line 361
    if-gez p0, :cond_1c

    .line 362
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1c
    if-gez p1, :cond_38

    .line 364
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_38
    if-le p0, p1, :cond_5f

    .line 366
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string/jumbo v2, " > toIndex: "

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_5f
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 4
    .param p1, "wordsRequired"    # I

    .prologue
    .line 334
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-ge v1, p1, :cond_19

    .line 336
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

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
    :cond_19
    return-void
.end method

.method private expandTo(I)V
    .registers 4
    .param p1, "wordIndex"    # I

    .prologue
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

.method private initWords(I)V
    .registers 3
    .param p1, "nbits"    # I

    .prologue
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
    const/4 v2, 0x0

    .line 1146
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1147
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "bits"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    .line 1152
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 1153
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 1154
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-lez v1, :cond_34

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_34

    const/4 v1, 0x1

    :goto_2e
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 1155
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1156
    return-void

    :cond_34
    move v1, v2

    .line 1154
    goto :goto_2e
.end method

.method private recalculateWordsInUse()V
    .registers 7

    .prologue
    .line 132
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_10

    .line 133
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    .line 136
    :cond_10
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 137
    return-void

    .line 132
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method

.method private trimToSize()V
    .registers 3

    .prologue
    .line 1116
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-eq v0, v1, :cond_14

    .line 1117
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    .line 1118
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1120
    :cond_14
    return-void
.end method

.method public static valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;
    .registers 13
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x8

    .line 269
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .local v3, "n":I
    :goto_10
    if-lez v3, :cond_1d

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    if-nez v6, :cond_1d

    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 273
    :cond_1d
    add-int/lit8 v6, v3, 0x7

    div-int/lit8 v6, v6, 0x8

    new-array v5, v6, [J

    .line 274
    .local v5, "words":[J
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "i":I
    :goto_27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lt v6, v8, :cond_37

    .line 277
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v5, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_27

    .line 278
    :cond_37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .local v4, "remaining":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3c
    if-ge v2, v4, :cond_51

    .line 279
    aget-wide v6, v5, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    mul-int/lit8 v10, v2, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    aput-wide v6, v5, v0

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 280
    :cond_51
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v5}, Ljava/util/BitSet;-><init>([J)V

    return-object v6
.end method

.method public static valueOf(Ljava/nio/LongBuffer;)Ljava/util/BitSet;
    .registers 7
    .param p0, "lb"    # Ljava/nio/LongBuffer;

    .prologue
    .line 221
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->slice()Ljava/nio/LongBuffer;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    .local v0, "n":I
    :goto_8
    if-lez v0, :cond_19

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

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

.method public static valueOf([B)Ljava/util/BitSet;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 247
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([J)Ljava/util/BitSet;
    .registers 7
    .param p0, "longs"    # [J

    .prologue
    .line 197
    array-length v0, p0

    .local v0, "n":I
    :goto_1
    if-lez v0, :cond_10

    add-int/lit8 v1, v0, -0x1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

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

.method private static wordIndex(I)I
    .registers 2
    .param p0, "bitIndex"    # I

    .prologue
    .line 112
    shr-int/lit8 v0, p0, 0x6

    return v0
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
    .line 1129
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1131
    iget-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v1, :cond_a

    .line 1132
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    .line 1134
    :cond_a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1135
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "bits"

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1137
    return-void
.end method


# virtual methods
.method public and(Ljava/util/BitSet;)V
    .registers 8
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 913
    if-ne p0, p1, :cond_3

    .line 914
    return-void

    .line 916
    :cond_3
    :goto_3
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-le v1, v2, :cond_16

    .line 917
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v2

    goto :goto_3

    .line 920
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_29

    .line 921
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 920
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 923
    :cond_29
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 924
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 925
    return-void
.end method

.method public andNot(Ljava/util/BitSet;)V
    .registers 8
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 1007
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

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
    :cond_1b
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 1011
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1012
    return-void
.end method

.method public cardinality()I
    .registers 5

    .prologue
    .line 897
    const/4 v1, 0x0

    .line 898
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v2, :cond_12

    .line 899
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 900
    :cond_12
    return v1
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 607
    :goto_0
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lez v0, :cond_11

    .line 608
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    goto :goto_0

    .line 609
    :cond_11
    return-void
.end method

.method public clear(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .prologue
    .line 539
    if-gez p1, :cond_1c

    .line 540
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :cond_1c
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 543
    .local v0, "wordIndex":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_25

    .line 544
    return-void

    .line 546
    :cond_25
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
.end method

.method public clear(II)V
    .registers 15
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 564
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 566
    if-ne p1, p2, :cond_8

    .line 567
    return-void

    .line 569
    :cond_8
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    .line 570
    .local v6, "startWordIndex":I
    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v6, v7, :cond_11

    .line 571
    return-void

    .line 573
    :cond_11
    add-int/lit8 v7, p2, -0x1

    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 574
    .local v0, "endWordIndex":I
    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v7, :cond_23

    .line 575
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result p2

    .line 576
    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v7, -0x1

    .line 579
    :cond_23
    shl-long v2, v8, p1

    .line 580
    .local v2, "firstWordMask":J
    neg-int v7, p2

    ushr-long v4, v8, v7

    .line 581
    .local v4, "lastWordMask":J
    if-ne v6, v0, :cond_3b

    .line 583
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    and-long v10, v2, v4

    not-long v10, v10

    and-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 597
    :goto_34
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 598
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 599
    return-void

    .line 587
    :cond_3b
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    not-long v10, v2

    and-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 590
    add-int/lit8 v1, v6, 0x1

    .local v1, "i":I
    :goto_45
    if-ge v1, v0, :cond_50

    .line 591
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v1

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 594
    :cond_50
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v0

    not-long v10, v4

    and-long/2addr v8, v10

    aput-wide v8, v7, v0

    goto :goto_34
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1097
    iget-boolean v2, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v2, :cond_7

    .line 1098
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    .line 1101
    :cond_7
    :try_start_7
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 1102
    .local v1, "result":Ljava/util/BitSet;
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Ljava/util/BitSet;->words:[J

    .line 1103
    invoke-direct {v1}, Ljava/util/BitSet;->checkInvariants()V
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1a} :catch_1b

    .line 1104
    return-object v1

    .line 1105
    .end local v1    # "result":Ljava/util/BitSet;
    :catch_1b
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1066
    instance-of v2, p1, Ljava/util/BitSet;

    if-nez v2, :cond_7

    .line 1067
    return v6

    .line 1068
    :cond_7
    if-ne p0, p1, :cond_a

    .line 1069
    return v7

    :cond_a
    move-object v1, p1

    .line 1071
    check-cast v1, Ljava/util/BitSet;

    .line 1073
    .local v1, "set":Ljava/util/BitSet;
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1074
    invoke-direct {v1}, Ljava/util/BitSet;->checkInvariants()V

    .line 1076
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, v1, Ljava/util/BitSet;->wordsInUse:I

    if-eq v2, v3, :cond_1a

    .line 1077
    return v6

    .line 1080
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v2, :cond_2f

    .line 1081
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    iget-object v4, v1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2c

    .line 1082
    return v6

    .line 1080
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1084
    :cond_2f
    return v7
.end method

.method public flip(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .prologue
    .line 379
    if-gez p1, :cond_1c

    .line 380
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_1c
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
.end method

.method public flip(II)V
    .registers 15
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const-wide/16 v10, -0x1

    .line 404
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 406
    if-ne p1, p2, :cond_8

    .line 407
    return-void

    .line 409
    :cond_8
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    .line 410
    .local v6, "startWordIndex":I
    add-int/lit8 v7, p2, -0x1

    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 411
    .local v0, "endWordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 413
    shl-long v2, v10, p1

    .line 414
    .local v2, "firstWordMask":J
    neg-int v7, p2

    ushr-long v4, v10, v7

    .line 415
    .local v4, "lastWordMask":J
    if-ne v6, v0, :cond_2c

    .line 417
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    and-long v10, v2, v4

    xor-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 431
    :goto_25
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 432
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 433
    return-void

    .line 421
    :cond_2c
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    xor-long/2addr v8, v2

    aput-wide v8, v7, v6

    .line 424
    add-int/lit8 v1, v6, 0x1

    .local v1, "i":I
    :goto_35
    if-ge v1, v0, :cond_41

    .line 425
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v1

    xor-long/2addr v8, v10

    aput-wide v8, v7, v1

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 428
    :cond_41
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v0

    xor-long/2addr v8, v4

    aput-wide v8, v7, v0

    goto :goto_25
.end method

.method public get(II)Ljava/util/BitSet;
    .registers 20
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 645
    invoke-static/range {p1 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 647
    invoke-direct/range {p0 .. p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 649
    invoke-virtual/range {p0 .. p0}, Ljava/util/BitSet;->length()I

    move-result v3

    .line 652
    .local v3, "len":I
    move/from16 v0, p1

    if-le v3, v0, :cond_14

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1b

    .line 653
    :cond_14
    new-instance v10, Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/util/BitSet;-><init>(I)V

    return-object v10

    .line 656
    :cond_1b
    move/from16 v0, p2

    if-le v0, v3, :cond_21

    .line 657
    move/from16 p2, v3

    .line 659
    :cond_21
    new-instance v6, Ljava/util/BitSet;

    sub-int v10, p2, p1

    invoke-direct {v6, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 660
    .local v6, "result":Ljava/util/BitSet;
    sub-int v10, p2, p1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    .line 661
    .local v8, "targetWords":I
    invoke-static/range {p1 .. p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v7

    .line 662
    .local v7, "sourceIndex":I
    and-int/lit8 v10, p1, 0x3f

    if-nez v10, :cond_51

    const/4 v9, 0x1

    .line 665
    .local v9, "wordAligned":Z
    :goto_3b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    add-int/lit8 v10, v8, -0x1

    if-ge v2, v10, :cond_69

    .line 666
    iget-object v12, v6, Ljava/util/BitSet;->words:[J

    if-eqz v9, :cond_53

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    :goto_4a
    aput-wide v10, v12, v2

    .line 665
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 662
    .end local v2    # "i":I
    .end local v9    # "wordAligned":Z
    :cond_51
    const/4 v9, 0x0

    .restart local v9    # "wordAligned":Z
    goto :goto_3b

    .line 667
    .restart local v2    # "i":I
    :cond_53
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    ushr-long v10, v10, p1

    .line 668
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, v13, v14

    move/from16 v0, p1

    neg-int v13, v0

    shl-long/2addr v14, v13

    .line 667
    or-long/2addr v10, v14

    goto :goto_4a

    .line 671
    :cond_69
    move/from16 v0, p2

    neg-int v10, v0

    const-wide/16 v12, -0x1

    ushr-long v4, v12, v10

    .line 672
    .local v4, "lastWordMask":J
    iget-object v12, v6, Ljava/util/BitSet;->words:[J

    add-int/lit8 v13, v8, -0x1

    .line 673
    add-int/lit8 v10, p2, -0x1

    and-int/lit8 v10, v10, 0x3f

    and-int/lit8 v11, p1, 0x3f

    if-ge v10, v11, :cond_a0

    .line 675
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    ushr-long v10, v10, p1

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v15, v7, 0x1

    aget-wide v14, v14, v15

    and-long/2addr v14, v4

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v16, v0

    shl-long v14, v14, v16

    .line 675
    or-long/2addr v10, v14

    .line 672
    :goto_95
    aput-wide v10, v12, v13

    .line 681
    iput v8, v6, Ljava/util/BitSet;->wordsInUse:I

    .line 682
    invoke-direct {v6}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 683
    invoke-direct {v6}, Ljava/util/BitSet;->checkInvariants()V

    .line 685
    return-object v6

    .line 678
    :cond_a0
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v4

    ushr-long v10, v10, p1

    goto :goto_95
.end method

.method public get(I)Z
    .registers 8
    .param p1, "bitIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 622
    if-gez p1, :cond_1d

    .line 623
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :cond_1d
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 627
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 628
    .local v0, "wordIndex":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v2, :cond_37

    .line 629
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    const/4 v1, 0x1

    .line 628
    :cond_37
    return v1
.end method

.method public hashCode()I
    .registers 9

    .prologue
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

    aget-wide v4, v3, v2

    add-int/lit8 v3, v2, 0x1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    xor-long/2addr v0, v4

    goto :goto_4

    .line 1037
    :cond_12
    const/16 v3, 0x20

    shr-long v4, v0, v3

    xor-long/2addr v4, v0

    long-to-int v3, v4

    return v3
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .registers 9
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    const/4 v6, 0x0

    .line 884
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_21

    .line 885
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v1, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1e

    .line 886
    const/4 v1, 0x1

    return v1

    .line 884
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 887
    :cond_21
    return v6
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 871
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method synthetic lambda$-java_util_BitSet_41972()Ljava/util/Spliterator$OfInt;
    .registers 5

    .prologue
    .line 1242
    new-instance v0, Ljava/util/BitSet$1BitSetIterator;

    invoke-direct {v0, p0}, Ljava/util/BitSet$1BitSetIterator;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    int-to-long v2, v1

    .line 1243
    const/16 v1, 0x15

    .line 1241
    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 856
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v0, :cond_6

    .line 857
    return v1

    .line 859
    :cond_6
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x40

    .line 860
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x40

    .line 859
    add-int/2addr v0, v1

    return v0
.end method

.method public nextClearBit(I)I
    .registers 10
    .param p1, "fromIndex"    # I

    .prologue
    .line 743
    if-gez p1, :cond_1c

    .line 744
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fromIndex < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_1c
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 748
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 749
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_28

    .line 750
    return p1

    .line 752
    :cond_28
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    not-long v4, v4

    const-wide/16 v6, -0x1

    shl-long/2addr v6, p1

    and-long v2, v4, v6

    .line 755
    .local v2, "word":J
    :goto_32
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_40

    .line 756
    mul-int/lit8 v1, v0, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v1, v4

    return v1

    .line 757
    :cond_40
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v1, :cond_4b

    .line 758
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    mul-int/lit8 v1, v1, 0x40

    return v1

    .line 759
    :cond_4b
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    not-long v2, v4

    goto :goto_32
.end method

.method public nextSetBit(I)I
    .registers 11
    .param p1, "fromIndex"    # I

    .prologue
    const/4 v8, -0x1

    .line 711
    if-gez p1, :cond_1d

    .line 712
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fromIndex < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 714
    :cond_1d
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 716
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 717
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_29

    .line 718
    return v8

    .line 720
    :cond_29
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    const-wide/16 v6, -0x1

    shl-long/2addr v6, p1

    and-long v2, v4, v6

    .line 723
    .local v2, "word":J
    :goto_32
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_40

    .line 724
    mul-int/lit8 v1, v0, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v1, v4

    return v1

    .line 725
    :cond_40
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v1, :cond_47

    .line 726
    return v8

    .line 727
    :cond_47
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    goto :goto_32
.end method

.method public or(Ljava/util/BitSet;)V
    .registers 10
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 937
    if-ne p0, p1, :cond_3

    .line 938
    return-void

    .line 940
    :cond_3
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 942
    .local v1, "wordsInCommon":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v2, v3, :cond_1a

    .line 943
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 944
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 948
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v1, :cond_2b

    .line 949
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v2, v0

    iget-object v3, p1, Ljava/util/BitSet;->words:[J

    aget-wide v6, v3, v0

    or-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 952
    :cond_2b
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_39

    .line 953
    iget-object v2, p1, Ljava/util/BitSet;->words:[J

    .line 954
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    .line 955
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    sub-int/2addr v4, v1

    .line 953
    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 958
    :cond_39
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 959
    return-void
.end method

.method public previousClearBit(I)I
    .registers 13
    .param p1, "fromIndex"    # I

    .prologue
    const/4 v10, -0x1

    .line 823
    if-gez p1, :cond_20

    .line 824
    if-ne p1, v10, :cond_6

    .line 825
    return v10

    .line 826
    :cond_6
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fromIndex < -1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 826
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 830
    :cond_20
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 832
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 833
    .local v0, "u":I
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v4, :cond_2c

    .line 834
    return p1

    .line 836
    :cond_2c
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v4, v4

    add-int/lit8 v6, p1, 0x1

    neg-int v6, v6

    const-wide/16 v8, -0x1

    ushr-long v6, v8, v6

    and-long v2, v4, v6

    .local v2, "word":J
    move v1, v0

    .line 839
    .end local v0    # "u":I
    .local v1, "u":I
    :goto_3b
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4d

    .line 840
    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x40

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    sub-int/2addr v4, v5

    return v4

    .line 841
    :cond_4d
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "u":I
    .restart local v0    # "u":I
    if-nez v1, :cond_52

    .line 842
    return v10

    .line 843
    :cond_52
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v2, v4

    move v1, v0

    .end local v0    # "u":I
    .restart local v1    # "u":I
    goto :goto_3b
.end method

.method public previousSetBit(I)I
    .registers 13
    .param p1, "fromIndex"    # I

    .prologue
    const/4 v10, -0x1

    .line 785
    if-gez p1, :cond_20

    .line 786
    if-ne p1, v10, :cond_6

    .line 787
    return v10

    .line 788
    :cond_6
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 789
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fromIndex < -1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 788
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 792
    :cond_20
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 794
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 795
    .local v0, "u":I
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v4, :cond_32

    .line 796
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    return v4

    .line 798
    :cond_32
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    add-int/lit8 v6, p1, 0x1

    neg-int v6, v6

    const-wide/16 v8, -0x1

    ushr-long v6, v8, v6

    and-long v2, v4, v6

    .local v2, "word":J
    move v1, v0

    .line 801
    .end local v0    # "u":I
    .local v1, "u":I
    :goto_40
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_52

    .line 802
    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x40

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    sub-int/2addr v4, v5

    return v4

    .line 803
    :cond_52
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "u":I
    .restart local v0    # "u":I
    if-nez v1, :cond_57

    .line 804
    return v10

    .line 805
    :cond_57
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v4, v0

    move v1, v0

    .end local v0    # "u":I
    .restart local v1    # "u":I
    goto :goto_40
.end method

.method public set(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .prologue
    .line 443
    if-gez p1, :cond_1c

    .line 444
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_1c
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
.end method

.method public set(II)V
    .registers 15
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const-wide/16 v10, -0x1

    .line 481
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 483
    if-ne p1, p2, :cond_8

    .line 484
    return-void

    .line 487
    :cond_8
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    .line 488
    .local v6, "startWordIndex":I
    add-int/lit8 v7, p2, -0x1

    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 489
    .local v0, "endWordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 491
    shl-long v2, v10, p1

    .line 492
    .local v2, "firstWordMask":J
    neg-int v7, p2

    ushr-long v4, v10, v7

    .line 493
    .local v4, "lastWordMask":J
    if-ne v6, v0, :cond_29

    .line 495
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    and-long v10, v2, v4

    or-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 509
    :goto_25
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 510
    return-void

    .line 499
    :cond_29
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    or-long/2addr v8, v2

    aput-wide v8, v7, v6

    .line 502
    add-int/lit8 v1, v6, 0x1

    .local v1, "i":I
    :goto_32
    if-ge v1, v0, :cond_3b

    .line 503
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aput-wide v10, v7, v1

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 506
    :cond_3b
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v0

    or-long/2addr v8, v4

    aput-wide v8, v7, v0

    goto :goto_25
.end method

.method public set(IIZ)V
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # Z

    .prologue
    .line 525
    if-eqz p3, :cond_6

    .line 526
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    .line 529
    :goto_5
    return-void

    .line 528
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    goto :goto_5
.end method

.method public set(IZ)V
    .registers 3
    .param p1, "bitIndex"    # I
    .param p2, "value"    # Z

    .prologue
    .line 463
    if-eqz p2, :cond_6

    .line 464
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    .line 467
    :goto_5
    return-void

    .line 466
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1048
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public stream()Ljava/util/stream/IntStream;
    .registers 4

    .prologue
    .line 1241
    new-instance v0, Ljava/util/-$Lambda$_AqhqkT4X2P3dexV7i-4bO_fGpk;

    invoke-direct {v0, p0}, Ljava/util/-$Lambda$_AqhqkT4X2P3dexV7i-4bO_fGpk;-><init>(Ljava/lang/Object;)V

    .line 1244
    const/16 v1, 0x4055

    .line 1246
    const/4 v2, 0x0

    .line 1240
    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    const/16 v10, 0x8

    .line 297
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 298
    .local v4, "n":I
    if-nez v4, :cond_c

    .line 299
    new-array v5, v5, [B

    return-object v5

    .line 300
    :cond_c
    add-int/lit8 v5, v4, -0x1

    mul-int/lit8 v3, v5, 0x8

    .line 301
    .local v3, "len":I
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v8, v4, -0x1

    aget-wide v6, v5, v8

    .local v6, "x":J
    :goto_16
    cmp-long v5, v6, v12

    if-eqz v5, :cond_1e

    .line 302
    add-int/lit8 v3, v3, 0x1

    .line 301
    ushr-long/2addr v6, v10

    goto :goto_16

    .line 303
    :cond_1e
    new-array v1, v3, [B

    .line 304
    .local v1, "bytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 305
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_39

    .line 306
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v5, v2

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 307
    :cond_39
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v8, v4, -0x1

    aget-wide v6, v5, v8

    :goto_3f
    cmp-long v5, v6, v12

    if-eqz v5, :cond_4d

    .line 308
    const-wide/16 v8, 0xff

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 307
    ushr-long/2addr v6, v10

    goto :goto_3f

    .line 309
    :cond_4d
    return-object v1
.end method

.method public toLongArray()[J
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1182
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1184
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    const/16 v5, 0x80

    if-le v4, v5, :cond_34

    .line 1185
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    .line 1186
    .local v3, "numBits":I
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x6

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1187
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {p0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .line 1190
    .local v2, "i":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2a

    .line 1191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1193
    :cond_26
    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_39

    .line 1201
    :cond_2a
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1185
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "numBits":I
    :cond_34
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    mul-int/lit8 v3, v4, 0x40

    .restart local v3    # "numBits":I
    goto :goto_e

    .line 1194
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    :cond_39
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    if-ltz v2, :cond_2a

    .line 1195
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    .line 1196
    .local v1, "endOfRun":I
    :goto_43
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1197
    add-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_26

    goto :goto_43
.end method

.method public xor(Ljava/util/BitSet;)V
    .registers 10
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 976
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 978
    .local v1, "wordsInCommon":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v2, v3, :cond_17

    .line 979
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 980
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 984
    :cond_17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v1, :cond_28

    .line 985
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v2, v0

    iget-object v3, p1, Ljava/util/BitSet;->words:[J

    aget-wide v6, v3, v0

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 988
    :cond_28
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_36

    .line 989
    iget-object v2, p1, Ljava/util/BitSet;->words:[J

    .line 990
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    .line 991
    iget v4, p1, Ljava/util/BitSet;->wordsInUse:I

    sub-int/2addr v4, v1

    .line 989
    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 993
    :cond_36
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 994
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 995
    return-void
.end method
