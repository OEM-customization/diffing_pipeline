.class Lsun/nio/fs/UnixPath;
.super Lsun/nio/fs/AbstractPath;
.source "UnixPath.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static encoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final fs:Lsun/nio/fs/UnixFileSystem;

.field private hash:I

.field private volatile offsets:[I

.field private final path:[B

.field private volatile stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/UnixPath;->-assertionsDisabled:Z

    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 46
    sput-object v0, Lsun/nio/fs/UnixPath;->encoder:Ljava/lang/ThreadLocal;

    .line 43
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)V
    .registers 4
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->normalizeAndCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lsun/nio/fs/UnixPath;->encode(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    .line 72
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;[B)V
    .registers 3
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "path"    # [B

    .prologue
    .line 64
    invoke-direct {p0}, Lsun/nio/fs/AbstractPath;-><init>()V

    .line 65
    iput-object p1, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    .line 66
    iput-object p2, p0, Lsun/nio/fs/UnixPath;->path:[B

    .line 67
    return-void
.end method

.method private static checkNotNul(Ljava/lang/String;C)V
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "c"    # C

    .prologue
    .line 92
    if-nez p1, :cond_b

    .line 93
    new-instance v0, Ljava/nio/file/InvalidPathException;

    const-string/jumbo v1, "Nul character not allowed"

    invoke-direct {v0, p0, v1}, Ljava/nio/file/InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_b
    return-void
.end method

.method private emptyPath()Lsun/nio/fs/UnixPath;
    .registers 4

    .prologue
    .line 254
    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v0
.end method

.method private static encode(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)[B
    .registers 16
    .param p0, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v9, Lsun/nio/fs/UnixPath;->encoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    .line 121
    .local v8, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/charset/CharsetEncoder;>;"
    if-eqz v8, :cond_65

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/charset/CharsetEncoder;

    .line 122
    :goto_10
    if-nez v4, :cond_30

    .line 123
    invoke-static {}, Lsun/nio/fs/Util;->jnuEncoding()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    .line 124
    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 123
    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    .line 125
    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 123
    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    .line 126
    .local v4, "ce":Ljava/nio/charset/CharsetEncoder;
    sget-object v9, Lsun/nio/fs/UnixPath;->encoder:Ljava/lang/ThreadLocal;

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 129
    .end local v4    # "ce":Ljava/nio/charset/CharsetEncoder;
    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {p0, v9}, Lsun/nio/fs/UnixFileSystem;->normalizeNativePath([C)[C

    move-result-object v2

    .line 132
    .local v2, "ca":[C
    array-length v9, v2

    int-to-double v10, v9

    invoke-virtual {v4}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v9

    float-to-double v12, v9

    mul-double/2addr v10, v12

    double-to-int v9, v10

    new-array v0, v9, [B

    .line 135
    .local v0, "ba":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 136
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 137
    .local v3, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v4}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 138
    const/4 v9, 0x1

    invoke-virtual {v4, v3, v1, v9}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 140
    .local v5, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_67

    .line 141
    const/4 v6, 0x1

    .line 146
    :goto_5a
    if-eqz v6, :cond_72

    .line 147
    new-instance v9, Ljava/nio/file/InvalidPathException;

    .line 148
    const-string/jumbo v10, "Malformed input or input contains unmappable characters"

    .line 147
    invoke-direct {v9, p1, v10}, Ljava/nio/file/InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 121
    .end local v0    # "ba":[B
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "ca":[C
    .end local v3    # "cb":Ljava/nio/CharBuffer;
    .end local v5    # "cr":Ljava/nio/charset/CoderResult;
    :cond_65
    const/4 v4, 0x0

    .local v4, "ce":Ljava/nio/charset/CharsetEncoder;
    goto :goto_10

    .line 143
    .end local v4    # "ce":Ljava/nio/charset/CharsetEncoder;
    .restart local v0    # "ba":[B
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "ca":[C
    .restart local v3    # "cb":Ljava/nio/CharBuffer;
    .restart local v5    # "cr":Ljava/nio/charset/CoderResult;
    :cond_67
    invoke-virtual {v4, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    xor-int/lit8 v6, v9, 0x1

    .local v6, "error":Z
    goto :goto_5a

    .line 152
    .end local v6    # "error":Z
    :cond_72
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 153
    .local v7, "len":I
    array-length v9, v0

    if-eq v7, v9, :cond_7d

    .line 154
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 156
    :cond_7d
    return-object v0
.end method

.method private initOffsets()V
    .registers 9

    .prologue
    const/16 v7, 0x2f

    .line 206
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    if-nez v6, :cond_5f

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "count":I
    const/4 v3, 0x0

    .line 212
    .local v3, "index":I
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 214
    const/4 v1, 0x1

    .line 227
    :cond_f
    new-array v5, v1, [I

    .line 228
    .local v5, "result":[I
    const/4 v1, 0x0

    .line 229
    const/4 v3, 0x0

    .line 230
    :goto_13
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v3, v6, :cond_57

    .line 231
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v0, v6, v3

    .line 232
    .local v0, "c":B
    if-ne v0, v7, :cond_40

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .end local v3    # "index":I
    .end local v5    # "result":[I
    .local v4, "index":I
    :cond_21
    move v3, v4

    .line 216
    .end local v0    # "c":B
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_22
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v3, v6, :cond_f

    .line 217
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aget-byte v0, v6, v3

    .line 218
    .restart local v0    # "c":B
    if-eq v0, v7, :cond_21

    .line 219
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .line 220
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_32
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v3, v6, :cond_22

    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v6, v6, v3

    if-eq v6, v7, :cond_22

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 235
    .restart local v5    # "result":[I
    :cond_40
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aput v3, v5, v1

    move v3, v4

    .line 236
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_47
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v3, v6, :cond_55

    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v6, v6, v3

    if-eq v6, v7, :cond_55

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_55
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_13

    .line 240
    .end local v0    # "c":B
    :cond_57
    monitor-enter p0

    .line 241
    :try_start_58
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    if-nez v6, :cond_5e

    .line 242
    iput-object v5, p0, Lsun/nio/fs/UnixPath;->offsets:[I
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_60

    :cond_5e
    monitor-exit p0

    .line 245
    .end local v1    # "count":I
    .end local v3    # "index":I
    .end local v5    # "result":[I
    :cond_5f
    return-void

    .line 240
    .restart local v1    # "count":I
    .restart local v3    # "index":I
    .restart local v5    # "result":[I
    :catchall_60
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v1, v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private static normalize(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "off"    # I

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x0

    .line 97
    if-nez p1, :cond_6

    .line 98
    return-object p0

    .line 99
    :cond_6
    move v2, p1

    .line 100
    .local v2, "n":I
    :goto_7
    if-lez v2, :cond_14

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_14

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 101
    :cond_14
    if-nez v2, :cond_1a

    .line 102
    const-string/jumbo v5, "/"

    return-object v5

    .line 103
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 104
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-lez p2, :cond_2c

    .line 105
    invoke-virtual {p0, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_2c
    const/4 v3, 0x0

    .line 107
    .local v3, "prevChar":C
    move v1, p2

    .end local v3    # "prevChar":C
    .local v1, "i":I
    :goto_2e
    if-ge v1, v2, :cond_43

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, "c":C
    if-ne v0, v7, :cond_3b

    if-ne v3, v7, :cond_3b

    .line 107
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 111
    :cond_3b
    invoke-static {p0, v0}, Lsun/nio/fs/UnixPath;->checkNotNul(Ljava/lang/String;C)V

    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    move v3, v0

    .local v3, "prevChar":C
    goto :goto_38

    .line 115
    .end local v0    # "c":C
    .end local v3    # "prevChar":C
    :cond_43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static normalizeAndCheck(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 78
    .local v2, "n":I
    const/4 v3, 0x0

    .line 79
    .local v3, "prevChar":C
    const/4 v1, 0x0

    .end local v3    # "prevChar":C
    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_20

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 81
    .local v0, "c":C
    if-ne v0, v4, :cond_19

    if-ne v3, v4, :cond_19

    .line 82
    add-int/lit8 v4, v1, -0x1

    invoke-static {p0, v2, v4}, Lsun/nio/fs/UnixPath;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 83
    :cond_19
    invoke-static {p0, v0}, Lsun/nio/fs/UnixPath;->checkNotNul(Ljava/lang/String;C)V

    .line 84
    move v3, v0

    .line 79
    .local v3, "prevChar":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 86
    .end local v0    # "c":C
    .end local v3    # "prevChar":C
    :cond_20
    if-ne v3, v4, :cond_29

    .line 87
    add-int/lit8 v4, v2, -0x1

    invoke-static {p0, v2, v4}, Lsun/nio/fs/UnixPath;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 88
    :cond_29
    return-object p0
.end method

.method private static resolve([B[B)[B
    .registers 9
    .param p0, "base"    # [B
    .param p1, "child"    # [B

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x2f

    const/4 v4, 0x0

    .line 375
    array-length v0, p0

    .line 376
    .local v0, "baseLength":I
    array-length v1, p1

    .line 377
    .local v1, "childLength":I
    if-nez v1, :cond_9

    .line 378
    return-object p0

    .line 379
    :cond_9
    if-eqz v0, :cond_f

    aget-byte v3, p1, v4

    if-ne v3, v5, :cond_10

    .line 380
    :cond_f
    return-object p1

    .line 382
    :cond_10
    if-ne v0, v6, :cond_20

    aget-byte v3, p0, v4

    if-ne v3, v5, :cond_20

    .line 383
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [B

    .line 384
    .local v2, "result":[B
    aput-byte v5, v2, v4

    .line 385
    invoke-static {p1, v4, v2, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 392
    :goto_1f
    return-object v2

    .line 387
    .end local v2    # "result":[B
    :cond_20
    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    new-array v2, v3, [B

    .line 388
    .restart local v2    # "result":[B
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 389
    array-length v3, p0

    aput-byte v5, v2, v3

    .line 390
    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1f
.end method

.method static toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 2
    .param p0, "obj"    # Ljava/nio/file/Path;

    .prologue
    .line 197
    if-nez p0, :cond_8

    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 199
    :cond_8
    instance-of v0, p0, Lsun/nio/fs/UnixPath;

    if-nez v0, :cond_12

    .line 200
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 201
    :cond_12
    check-cast p0, Lsun/nio/fs/UnixPath;

    .end local p0    # "obj":Ljava/nio/file/Path;
    return-object p0
.end method


# virtual methods
.method asByteArray()[B
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    return-object v0
.end method

.method checkDelete()V
    .registers 3

    .prologue
    .line 805
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 806
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 807
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 808
    :cond_d
    return-void
.end method

.method checkRead()V
    .registers 3

    .prologue
    .line 793
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 794
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 795
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 796
    :cond_d
    return-void
.end method

.method checkWrite()V
    .registers 3

    .prologue
    .line 799
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 800
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 801
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 802
    :cond_d
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 715
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->compareTo(Ljava/nio/file/Path;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/file/Path;)I
    .registers 11
    .param p1, "other"    # Ljava/nio/file/Path;

    .prologue
    .line 717
    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v3, v8

    .local v3, "len1":I
    move-object v8, p1

    .line 718
    check-cast v8, Lsun/nio/fs/UnixPath;

    iget-object v8, v8, Lsun/nio/fs/UnixPath;->path:[B

    array-length v4, v8

    .line 720
    .local v4, "len2":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 721
    .local v5, "n":I
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    .line 722
    .local v6, "v1":[B
    check-cast p1, Lsun/nio/fs/UnixPath;

    .end local p1    # "other":Ljava/nio/file/Path;
    iget-object v7, p1, Lsun/nio/fs/UnixPath;->path:[B

    .line 724
    .local v7, "v2":[B
    const/4 v2, 0x0

    .line 725
    .local v2, "k":I
    :goto_14
    if-ge v2, v5, :cond_26

    .line 726
    aget-byte v8, v6, v2

    and-int/lit16 v0, v8, 0xff

    .line 727
    .local v0, "c1":I
    aget-byte v8, v7, v2

    and-int/lit16 v1, v8, 0xff

    .line 728
    .local v1, "c2":I
    if-eq v0, v1, :cond_23

    .line 729
    sub-int v8, v0, v1

    return v8

    .line 731
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 733
    .end local v0    # "c1":I
    .end local v1    # "c2":I
    :cond_26
    sub-int v8, v3, v4

    return v8
.end method

.method public endsWith(Ljava/nio/file/Path;)Z
    .registers 16
    .param p1, "other"    # Ljava/nio/file/Path;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 660
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lsun/nio/fs/UnixPath;

    if-nez v10, :cond_b

    .line 661
    return v12

    :cond_b
    move-object v1, p1

    .line 662
    check-cast v1, Lsun/nio/fs/UnixPath;

    .line 664
    .local v1, "that":Lsun/nio/fs/UnixPath;
    iget-object v10, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v10

    .line 665
    .local v6, "thisLen":I
    iget-object v10, v1, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v10

    .line 668
    .local v2, "thatLen":I
    if-le v2, v6, :cond_17

    .line 669
    return v12

    .line 672
    :cond_17
    if-lez v6, :cond_1c

    if-nez v2, :cond_1c

    .line 673
    return v12

    .line 676
    :cond_1c
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2b

    .line 677
    return v12

    .line 679
    :cond_2b
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v7

    .line 680
    .local v7, "thisOffsetCount":I
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v3

    .line 683
    .local v3, "thatOffsetCount":I
    if-le v3, v7, :cond_36

    .line 684
    return v12

    .line 687
    :cond_36
    if-ne v3, v7, :cond_4f

    .line 688
    if-nez v7, :cond_3b

    .line 689
    return v13

    .line 690
    :cond_3b
    move v0, v6

    .line 691
    .local v0, "expectedLen":I
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4c

    .line 692
    add-int/lit8 v0, v6, -0x1

    .line 693
    :cond_4c
    if-eq v2, v0, :cond_56

    .line 694
    return v12

    .line 697
    .end local v0    # "expectedLen":I
    :cond_4f
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    if-eqz v10, :cond_56

    .line 698
    return v12

    .line 703
    :cond_56
    iget-object v10, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    sub-int v11, v7, v3

    aget v8, v10, v11

    .line 704
    .local v8, "thisPos":I
    iget-object v10, v1, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v4, v10, v12

    .line 705
    .local v4, "thatPos":I
    sub-int v10, v2, v4

    sub-int v11, v6, v8

    if-eq v10, v11, :cond_67

    .line 706
    return v12

    :cond_67
    move v5, v4

    .end local v4    # "thatPos":I
    .local v5, "thatPos":I
    move v9, v8

    .line 707
    .end local v8    # "thisPos":I
    .local v9, "thisPos":I
    if-ge v5, v2, :cond_7a

    .line 708
    iget-object v10, p0, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "thisPos":I
    .restart local v8    # "thisPos":I
    aget-byte v10, v10, v9

    iget-object v11, v1, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "thatPos":I
    .restart local v4    # "thatPos":I
    aget-byte v11, v11, v5

    if-eq v10, v11, :cond_67

    .line 709
    return v12

    .line 712
    .end local v4    # "thatPos":I
    .end local v8    # "thisPos":I
    .restart local v5    # "thatPos":I
    .restart local v9    # "thisPos":I
    :cond_7a
    return v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 738
    if-eqz p1, :cond_11

    instance-of v1, p1, Lsun/nio/fs/UnixPath;

    if-eqz v1, :cond_11

    .line 739
    check-cast p1, Ljava/nio/file/Path;

    .end local p1    # "ob":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->compareTo(Ljava/nio/file/Path;)I

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 741
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_11
    return v0
.end method

.method getByteArrayForSysCalls()[B
    .registers 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 169
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileSystem;->defaultDirectory()[B

    move-result-object v1

    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v1, v2}, Lsun/nio/fs/UnixPath;->resolve([B[B)[B

    move-result-object v1

    return-object v1

    .line 171
    :cond_19
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    .line 172
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    return-object v1

    .line 175
    :cond_22
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/16 v1, 0x2e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 176
    .local v0, "here":[B
    return-object v0
.end method

.method public bridge synthetic getFileName()Ljava/nio/file/Path;
    .registers 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileName()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Lsun/nio/fs/UnixPath;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 273
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 275
    iget-object v4, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v4

    .line 278
    .local v0, "count":I
    if-nez v0, :cond_b

    .line 279
    const/4 v4, 0x0

    return-object v4

    .line 282
    :cond_b
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1c

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v4, v4

    if-lez v4, :cond_1c

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v4, v4, v6

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1c

    .line 283
    return-object p0

    .line 285
    :cond_1c
    iget-object v4, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v5, v0, -0x1

    aget v1, v4, v5

    .line 286
    .local v1, "lastOffset":I
    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v4, v4

    sub-int v2, v4, v1

    .line 287
    .local v2, "len":I
    new-array v3, v2, [B

    .line 288
    .local v3, "result":[B
    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v4, v1, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 289
    new-instance v4, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v4
.end method

.method public bridge synthetic getFileSystem()Ljava/nio/file/FileSystem;
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lsun/nio/fs/UnixFileSystem;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    return-object v0
.end method

.method public bridge synthetic getName(I)Ljava/nio/file/Path;
    .registers 3

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Lsun/nio/fs/UnixPath;
    .registers 8
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 320
    if-gez p1, :cond_c

    .line 321
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 322
    :cond_c
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    if-lt p1, v3, :cond_17

    .line 323
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 325
    :cond_17
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v0, v3, p1

    .line 327
    .local v0, "begin":I
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_38

    .line 328
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v3, v3

    sub-int v1, v3, v0

    .line 334
    .local v1, "len":I
    :goto_27
    new-array v2, v1, [B

    .line 335
    .local v2, "result":[B
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v3, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 336
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v3

    .line 330
    .end local v1    # "len":I
    .end local v2    # "result":[B
    :cond_38
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    sub-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "len":I
    goto :goto_27
.end method

.method public getNameCount()I
    .registers 2

    .prologue
    .line 313
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 314
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getParent()Ljava/nio/file/Path;
    .registers 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lsun/nio/fs/UnixPath;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 294
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 296
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v3

    .line 297
    .local v0, "count":I
    if-nez v0, :cond_b

    .line 299
    const/4 v3, 0x0

    return-object v3

    .line 301
    :cond_b
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 302
    .local v1, "len":I
    if-gtz v1, :cond_1a

    .line 304
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getRoot()Lsun/nio/fs/UnixPath;

    move-result-object v3

    return-object v3

    .line 306
    :cond_1a
    new-array v2, v1, [B

    .line 307
    .local v2, "result":[B
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v3, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 308
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v3
.end method

.method getPathForExceptionMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPathForPermissionCheck()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 189
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v0

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_13
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRoot()Ljava/nio/file/Path;
    .registers 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getRoot()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lsun/nio/fs/UnixPath;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v0, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_17

    .line 265
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0

    .line 267
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 747
    iget v0, p0, Lsun/nio/fs/UnixPath;->hash:I

    .line 748
    .local v0, "h":I
    if-nez v0, :cond_19

    .line 749
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 750
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 752
    :cond_17
    iput v0, p0, Lsun/nio/fs/UnixPath;->hash:I

    .line 754
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public isAbsolute()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v1, v1

    if-lez v1, :cond_f

    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public normalize()Ljava/nio/file/Path;
    .registers 24

    .prologue
    .line 484
    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v5

    .line 485
    .local v5, "count":I
    if-eqz v5, :cond_c

    invoke-direct/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 486
    :cond_c
    return-object p0

    .line 488
    :cond_d
    new-array v9, v5, [Z

    .line 489
    .local v9, "ignore":[Z
    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 490
    .local v19, "size":[I
    move/from16 v17, v5

    .line 491
    .local v17, "remaining":I
    const/4 v6, 0x0

    .line 492
    .local v6, "hasDotDot":Z
    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    .line 498
    .local v10, "isAbsolute":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1b
    if-ge v8, v5, :cond_87

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v20, v0

    aget v4, v20, v8

    .line 501
    .local v4, "begin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_64

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v12, v20, v4

    .line 506
    .local v12, "len":I
    :goto_43
    aput v12, v19, v8

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v4

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_61

    .line 509
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_73

    .line 510
    const/16 v20, 0x1

    aput-boolean v20, v9, v8

    .line 511
    add-int/lit8 v17, v17, -0x1

    .line 498
    :cond_61
    :goto_61
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    .line 504
    .end local v12    # "len":I
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    aget v20, v20, v21

    sub-int v20, v20, v4

    add-int/lit8 v12, v20, -0x1

    .restart local v12    # "len":I
    goto :goto_43

    .line 514
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v4, 0x1

    aget-byte v20, v20, v21

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_61

    .line 515
    const/4 v6, 0x1

    goto :goto_61

    .line 521
    .end local v4    # "begin":I
    .end local v12    # "len":I
    :cond_87
    if-eqz v6, :cond_f9

    .line 524
    :cond_89
    move/from16 v16, v17

    .line 525
    .local v16, "prevRemaining":I
    const/4 v15, -0x1

    .line 526
    .local v15, "prevName":I
    const/4 v8, 0x0

    :goto_8d
    if-ge v8, v5, :cond_f3

    .line 527
    aget-boolean v20, v9, v8

    if-eqz v20, :cond_96

    .line 526
    :cond_93
    :goto_93
    add-int/lit8 v8, v8, 0x1

    goto :goto_8d

    .line 531
    :cond_96
    aget v20, v19, v8

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a2

    .line 532
    move v15, v8

    .line 533
    goto :goto_93

    .line 536
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v20, v0

    aget v4, v20, v8

    .line 537
    .restart local v4    # "begin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v4

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v4, 0x1

    aget-byte v20, v20, v21

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_ce

    .line 538
    :cond_cc
    move v15, v8

    .line 539
    goto :goto_93

    .line 543
    :cond_ce
    if-ltz v15, :cond_dc

    .line 546
    const/16 v20, 0x1

    aput-boolean v20, v9, v15

    .line 547
    const/16 v20, 0x1

    aput-boolean v20, v9, v8

    .line 548
    add-int/lit8 v17, v17, -0x2

    .line 549
    const/4 v15, -0x1

    goto :goto_93

    .line 552
    :cond_dc
    if-eqz v10, :cond_93

    .line 553
    const/4 v7, 0x0

    .line 554
    .local v7, "hasPrevious":Z
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_e0
    if-ge v11, v8, :cond_e7

    .line 555
    aget-boolean v20, v9, v11

    if-nez v20, :cond_f0

    .line 556
    const/4 v7, 0x1

    .line 560
    :cond_e7
    if-nez v7, :cond_93

    .line 562
    const/16 v20, 0x1

    aput-boolean v20, v9, v8

    .line 563
    add-int/lit8 v17, v17, -0x1

    goto :goto_93

    .line 554
    :cond_f0
    add-int/lit8 v11, v11, 0x1

    goto :goto_e0

    .line 568
    .end local v4    # "begin":I
    .end local v7    # "hasPrevious":Z
    .end local v11    # "j":I
    :cond_f3
    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_89

    .line 572
    .end local v15    # "prevName":I
    .end local v16    # "prevRemaining":I
    :cond_f9
    move/from16 v0, v17

    if-ne v0, v5, :cond_fe

    .line 573
    return-object p0

    .line 576
    :cond_fe
    if-nez v17, :cond_110

    .line 577
    if-eqz v10, :cond_10b

    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v20

    :goto_10a
    return-object v20

    :cond_10b
    invoke-direct/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->emptyPath()Lsun/nio/fs/UnixPath;

    move-result-object v20

    goto :goto_10a

    .line 581
    :cond_110
    add-int/lit8 v12, v17, -0x1

    .line 582
    .restart local v12    # "len":I
    if-eqz v10, :cond_116

    .line 583
    add-int/lit8 v12, v12, 0x1

    .line 585
    :cond_116
    const/4 v8, 0x0

    :goto_117
    if-ge v8, v5, :cond_124

    .line 586
    aget-boolean v20, v9, v8

    if-nez v20, :cond_121

    .line 587
    aget v20, v19, v8

    add-int v12, v12, v20

    .line 585
    :cond_121
    add-int/lit8 v8, v8, 0x1

    goto :goto_117

    .line 589
    :cond_124
    new-array v0, v12, [B

    move-object/from16 v18, v0

    .line 592
    .local v18, "result":[B
    const/4 v13, 0x0

    .line 593
    .local v13, "pos":I
    if-eqz v10, :cond_132

    .line 592
    const/16 v20, 0x0

    .line 594
    const/4 v13, 0x1

    const/16 v21, 0x2f

    aput-byte v21, v18, v20

    .line 595
    :cond_132
    const/4 v8, 0x0

    :goto_133
    if-ge v8, v5, :cond_166

    .line 596
    aget-boolean v20, v9, v8

    if-nez v20, :cond_163

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    aget v22, v19, v8

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v13, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 598
    aget v20, v19, v8

    add-int v13, v13, v20

    .line 599
    add-int/lit8 v17, v17, -0x1

    if-lez v17, :cond_163

    .line 600
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "pos":I
    .local v14, "pos":I
    const/16 v20, 0x2f

    aput-byte v20, v18, v13

    move v13, v14

    .line 595
    .end local v14    # "pos":I
    .restart local v13    # "pos":I
    :cond_163
    add-int/lit8 v8, v8, 0x1

    goto :goto_133

    .line 604
    :cond_166
    new-instance v20, Lsun/nio/fs/UnixPath;

    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v20
.end method

.method openForAttributeAccess(Z)I
    .registers 8
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .line 771
    .local v0, "flags":I
    if-nez p1, :cond_14

    .line 772
    sget v2, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-nez v2, :cond_11

    .line 773
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "NOFOLLOW_LINKS is not supported on this platform"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    :cond_11
    sget v2, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v2

    .line 777
    :cond_14
    const/4 v2, 0x0

    :try_start_15
    invoke-static {p0, v0, v2}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_18
    .catch Lsun/nio/fs/UnixException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result v2

    return v2

    .line 778
    :catch_1a
    move-exception v1

    .line 780
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixFileSystem;->isSolaris()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errno()I

    move-result v2

    sget v3, Lsun/nio/fs/UnixConstants;->EINVAL:I

    if-ne v2, v3, :cond_32

    .line 781
    sget v2, Lsun/nio/fs/UnixConstants;->ELOOP:I

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->setError(I)V

    .line 783
    :cond_32
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errno()I

    move-result v2

    sget v3, Lsun/nio/fs/UnixConstants;->ELOOP:I

    if-ne v2, v3, :cond_5d

    .line 784
    new-instance v2, Ljava/nio/file/FileSystemException;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    .line 785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " or unable to access attributes of symbolic link"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 784
    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 787
    :cond_5d
    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 788
    const/4 v2, -0x1

    return v2
.end method

.method public varargs register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .registers 5
    .param p1, "watcher"    # Ljava/nio/file/WatchService;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    if-nez p1, :cond_8

    .line 893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 894
    :cond_8
    instance-of v0, p1, Lsun/nio/fs/AbstractWatchService;

    if-nez v0, :cond_12

    .line 895
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 896
    :cond_12
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 897
    check-cast p1, Lsun/nio/fs/AbstractWatchService;

    .end local p1    # "watcher":Ljava/nio/file/WatchService;
    invoke-virtual {p1, p0, p2, p3}, Lsun/nio/fs/AbstractWatchService;->register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 3

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->relativize(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public relativize(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 17
    .param p1, "obj"    # Ljava/nio/file/Path;

    .prologue
    .line 410
    invoke-static/range {p1 .. p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v7

    .line 411
    .local v7, "other":Lsun/nio/fs/UnixPath;
    invoke-virtual {v7, p0}, Lsun/nio/fs/UnixPath;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 412
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->emptyPath()Lsun/nio/fs/UnixPath;

    move-result-object v12

    return-object v12

    .line 415
    :cond_f
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v12

    invoke-virtual {v7}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v13

    if-eq v12, v13, :cond_22

    .line 416
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "\'other\' is different type of Path"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 419
    :cond_22
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_29

    .line 420
    return-object v7

    .line 422
    :cond_29
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v0

    .line 423
    .local v0, "bn":I
    invoke-virtual {v7}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v1

    .line 426
    .local v1, "cn":I
    if-le v0, v1, :cond_50

    move v6, v1

    .line 427
    .local v6, "n":I
    :goto_34
    const/4 v3, 0x0

    .line 428
    .local v3, "i":I
    :goto_35
    if-ge v3, v6, :cond_45

    .line 429
    invoke-virtual {p0, v3}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v12

    invoke-virtual {v7, v3}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/nio/fs/UnixPath;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_52

    .line 434
    :cond_45
    sub-int v2, v0, v3

    .line 435
    .local v2, "dotdots":I
    if-ge v3, v1, :cond_af

    .line 437
    invoke-virtual {v7, v3, v1}, Lsun/nio/fs/UnixPath;->subpath(II)Lsun/nio/fs/UnixPath;

    move-result-object v10

    .line 438
    .local v10, "remainder":Lsun/nio/fs/UnixPath;
    if-nez v2, :cond_55

    .line 439
    return-object v10

    .line 426
    .end local v2    # "dotdots":I
    .end local v3    # "i":I
    .end local v6    # "n":I
    .end local v10    # "remainder":Lsun/nio/fs/UnixPath;
    :cond_50
    move v6, v0

    .restart local v6    # "n":I
    goto :goto_34

    .line 431
    .restart local v3    # "i":I
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 442
    .restart local v2    # "dotdots":I
    .restart local v10    # "remainder":Lsun/nio/fs/UnixPath;
    :cond_55
    invoke-direct {v7}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v4

    .line 447
    .local v4, "isOtherEmpty":Z
    mul-int/lit8 v12, v2, 0x3

    iget-object v13, v10, Lsun/nio/fs/UnixPath;->path:[B

    array-length v13, v13

    add-int v5, v12, v13

    .line 448
    .local v5, "len":I
    if-eqz v4, :cond_74

    .line 449
    sget-boolean v12, Lsun/nio/fs/UnixPath;->-assertionsDisabled:Z

    if-nez v12, :cond_72

    invoke-direct {v10}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_72

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 450
    :cond_72
    add-int/lit8 v5, v5, -0x1

    .line 452
    :cond_74
    new-array v11, v5, [B

    .line 453
    .local v11, "result":[B
    const/4 v8, 0x0

    .local v8, "pos":I
    move v9, v8

    .line 454
    .end local v8    # "pos":I
    .local v9, "pos":I
    :goto_78
    if-lez v2, :cond_9c

    .line 455
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    const/16 v12, 0x2e

    aput-byte v12, v11, v9

    .line 456
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    const/16 v12, 0x2e

    aput-byte v12, v11, v8

    .line 457
    if-eqz v4, :cond_95

    .line 458
    const/4 v12, 0x1

    if-le v2, v12, :cond_de

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    const/16 v12, 0x2f

    aput-byte v12, v11, v9

    .line 462
    :goto_91
    add-int/lit8 v2, v2, -0x1

    move v9, v8

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_78

    .line 460
    :cond_95
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    const/16 v12, 0x2f

    aput-byte v12, v11, v9

    goto :goto_91

    .line 464
    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    :cond_9c
    iget-object v12, v10, Lsun/nio/fs/UnixPath;->path:[B

    iget-object v13, v10, Lsun/nio/fs/UnixPath;->path:[B

    array-length v13, v13

    const/4 v14, 0x0

    invoke-static {v12, v14, v11, v9, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 465
    new-instance v12, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v12

    .line 468
    .end local v4    # "isOtherEmpty":Z
    .end local v5    # "len":I
    .end local v9    # "pos":I
    .end local v10    # "remainder":Lsun/nio/fs/UnixPath;
    .end local v11    # "result":[B
    :cond_af
    mul-int/lit8 v12, v2, 0x3

    add-int/lit8 v12, v12, -0x1

    new-array v11, v12, [B

    .line 469
    .restart local v11    # "result":[B
    const/4 v8, 0x0

    .restart local v8    # "pos":I
    move v9, v8

    .line 470
    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    :goto_b7
    if-lez v2, :cond_d2

    .line 471
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    const/16 v12, 0x2e

    aput-byte v12, v11, v9

    .line 472
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    const/16 v12, 0x2e

    aput-byte v12, v11, v8

    .line 474
    const/4 v12, 0x1

    if-le v2, v12, :cond_dc

    .line 475
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    const/16 v12, 0x2f

    aput-byte v12, v11, v9

    .line 476
    :goto_ce
    add-int/lit8 v2, v2, -0x1

    move v9, v8

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_b7

    .line 478
    :cond_d2
    new-instance v12, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v12

    :cond_dc
    move v8, v9

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_ce

    .end local v8    # "pos":I
    .restart local v4    # "isOtherEmpty":Z
    .restart local v5    # "len":I
    .restart local v9    # "pos":I
    .restart local v10    # "remainder":Lsun/nio/fs/UnixPath;
    :cond_de
    move v8, v9

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_91
.end method

.method public bridge synthetic resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 3

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 6
    .param p1, "obj"    # Ljava/nio/file/Path;

    .prologue
    const/4 v3, 0x0

    .line 397
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    iget-object v0, v2, Lsun/nio/fs/UnixPath;->path:[B

    .line 398
    .local v0, "other":[B
    array-length v2, v0

    if-lez v2, :cond_13

    aget-byte v2, v0, v3

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_13

    .line 399
    check-cast p1, Lsun/nio/fs/UnixPath;

    .end local p1    # "obj":Ljava/nio/file/Path;
    return-object p1

    .line 400
    .restart local p1    # "obj":Ljava/nio/file/Path;
    :cond_13
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v2, v0}, Lsun/nio/fs/UnixPath;->resolve([B[B)[B

    move-result-object v1

    .line 401
    .local v1, "result":[B
    new-instance v2, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v2
.end method

.method resolve([B)Lsun/nio/fs/UnixPath;
    .registers 4
    .param p1, "other"    # [B

    .prologue
    .line 405
    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public startsWith(Ljava/nio/file/Path;)Z
    .registers 12
    .param p1, "other"    # Ljava/nio/file/Path;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 609
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lsun/nio/fs/UnixPath;

    if-nez v8, :cond_b

    .line 610
    return v6

    :cond_b
    move-object v3, p1

    .line 611
    check-cast v3, Lsun/nio/fs/UnixPath;

    .line 614
    .local v3, "that":Lsun/nio/fs/UnixPath;
    iget-object v8, v3, Lsun/nio/fs/UnixPath;->path:[B

    array-length v8, v8

    iget-object v9, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v9, v9

    if-le v8, v9, :cond_17

    .line 615
    return v6

    .line 617
    :cond_17
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v5

    .line 618
    .local v5, "thisOffsetCount":I
    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v4

    .line 621
    .local v4, "thatOffsetCount":I
    if-nez v4, :cond_30

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 622
    invoke-direct {v3}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2e

    :goto_2d
    return v6

    :cond_2e
    move v6, v7

    goto :goto_2d

    .line 626
    :cond_30
    if-le v4, v5, :cond_33

    .line 627
    return v6

    .line 630
    :cond_33
    if-ne v4, v5, :cond_3e

    .line 631
    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v8, v8

    iget-object v9, v3, Lsun/nio/fs/UnixPath;->path:[B

    array-length v9, v9

    if-eq v8, v9, :cond_3e

    .line 632
    return v6

    .line 636
    :cond_3e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    if-ge v0, v4, :cond_5b

    .line 637
    iget-object v8, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 638
    .local v1, "o1":Ljava/lang/Integer;
    iget-object v8, v3, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 639
    .local v2, "o2":Ljava/lang/Integer;
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_58

    .line 640
    return v6

    .line 636
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 644
    .end local v1    # "o1":Ljava/lang/Integer;
    .end local v2    # "o2":Ljava/lang/Integer;
    :cond_5b
    const/4 v0, 0x0

    .line 645
    :goto_5c
    iget-object v8, v3, Lsun/nio/fs/UnixPath;->path:[B

    array-length v8, v8

    if-ge v0, v8, :cond_6f

    .line 646
    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v8, v8, v0

    iget-object v9, v3, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v9, v9, v0

    if-eq v8, v9, :cond_6c

    .line 647
    return v6

    .line 648
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 652
    :cond_6f
    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v8, v8

    if-ge v0, v8, :cond_7d

    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v8, v8, v0

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_7d

    .line 653
    return v6

    .line 655
    :cond_7d
    return v7
.end method

.method public bridge synthetic subpath(II)Ljava/nio/file/Path;
    .registers 4

    .prologue
    .line 339
    invoke-virtual {p0, p1, p2}, Lsun/nio/fs/UnixPath;->subpath(II)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public subpath(II)Lsun/nio/fs/UnixPath;
    .registers 8
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 341
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 343
    if-gez p1, :cond_c

    .line 344
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 345
    :cond_c
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    if-lt p1, v3, :cond_17

    .line 346
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 347
    :cond_17
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    if-le p2, v3, :cond_22

    .line 348
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 349
    :cond_22
    if-lt p1, p2, :cond_2a

    .line 350
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 354
    :cond_2a
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v0, v3, p1

    .line 356
    .local v0, "begin":I
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    if-ne p2, v3, :cond_49

    .line 357
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v3, v3

    sub-int v1, v3, v0

    .line 363
    .local v1, "len":I
    :goto_38
    new-array v2, v1, [B

    .line 364
    .local v2, "result":[B
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 365
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v3

    .line 359
    .end local v1    # "len":I
    .end local v2    # "result":[B
    :cond_49
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v3, v3, p2

    sub-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "len":I
    goto :goto_38
.end method

.method public bridge synthetic toAbsolutePath()Ljava/nio/file/Path;
    .registers 2

    .prologue
    .line 810
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toAbsolutePath()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public toAbsolutePath()Lsun/nio/fs/UnixPath;
    .registers 6

    .prologue
    .line 812
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 813
    return-object p0

    .line 817
    :cond_7
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 818
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 819
    const-string/jumbo v1, "user.dir"

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 821
    :cond_13
    new-instance v1, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v2

    .line 822
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixFileSystem;->defaultDirectory()[B

    move-result-object v3

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v3, v4}, Lsun/nio/fs/UnixPath;->resolve([B[B)[B

    move-result-object v3

    .line 821
    invoke-direct {v1, v2, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v1
.end method

.method public varargs toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .registers 14
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x2e

    const/4 v9, 0x0

    .line 827
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 829
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toAbsolutePath()Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 832
    .local v0, "absolute":Lsun/nio/fs/UnixPath;
    invoke-static {p1}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 834
    :try_start_11
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->realpath(Lsun/nio/fs/UnixPath;)[B

    move-result-object v5

    .line 835
    .local v5, "rp":[B
    new-instance v7, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V
    :try_end_1e
    .catch Lsun/nio/fs/UnixException; {:try_start_11 .. :try_end_1e} :catch_1f

    return-object v7

    .line 836
    .end local v5    # "rp":[B
    :catch_1f
    move-exception v6

    .line 837
    .local v6, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v6, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 843
    .end local v6    # "x":Lsun/nio/fs/UnixException;
    :cond_23
    iget-object v7, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    invoke-virtual {v7}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    .line 844
    .local v4, "result":Lsun/nio/fs/UnixPath;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v7

    if-ge v3, v7, :cond_81

    .line 845
    invoke-virtual {v0, v3}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v2

    .line 848
    .local v2, "element":Lsun/nio/fs/UnixPath;
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    array-length v7, v7

    if-ne v7, v11, :cond_46

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    aget-byte v7, v7, v9

    if-ne v7, v10, :cond_46

    .line 844
    :cond_43
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 852
    :cond_46
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7c

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    aget-byte v7, v7, v9

    if-ne v7, v10, :cond_7c

    .line 853
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    aget-byte v7, v7, v11

    if-ne v7, v10, :cond_7c

    .line 855
    const/4 v1, 0x0

    .line 857
    .local v1, "attrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v7, 0x0

    :try_start_60
    invoke-static {v4, v7}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_63
    .catch Lsun/nio/fs/UnixException; {:try_start_60 .. :try_end_63} :catch_77

    move-result-object v1

    .line 861
    .end local v1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_64
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v7

    if-nez v7, :cond_7c

    .line 862
    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v4

    .line 863
    if-nez v4, :cond_43

    .line 864
    iget-object v7, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    invoke-virtual {v7}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    goto :goto_43

    .line 858
    .restart local v1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_77
    move-exception v6

    .line 859
    .restart local v6    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v6, v4}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_64

    .line 869
    .end local v1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v6    # "x":Lsun/nio/fs/UnixException;
    :cond_7c
    invoke-virtual {v4, v2}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    goto :goto_43

    .line 874
    .end local v2    # "element":Lsun/nio/fs/UnixPath;
    :cond_81
    const/4 v7, 0x0

    :try_start_82
    invoke-static {v4, v7}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_85
    .catch Lsun/nio/fs/UnixException; {:try_start_82 .. :try_end_85} :catch_86

    .line 878
    :goto_85
    return-object v4

    .line 875
    :catch_86
    move-exception v6

    .line 876
    .restart local v6    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v6, v4}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_85
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 760
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->stringValue:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 761
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixFileSystem;->normalizeJavaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixPath;->stringValue:Ljava/lang/String;

    .line 763
    :cond_12
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 2

    .prologue
    .line 883
    invoke-static {p0}, Lsun/nio/fs/UnixUriUtils;->toUri(Lsun/nio/fs/UnixPath;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
