.class public final Ljava/util/UUID;
.super Ljava/lang/Object;
.source "UUID.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/UUID$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final whitelist serialVersionUID:J = -0x4366fc0867927ad1L


# instance fields
.field private final greylist leastSigBits:J

.field private final greylist mostSigBits:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 70
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(JJ)V
    .registers 5
    .param p1, "mostSigBits"    # J
    .param p3, "leastSigBits"    # J

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide p1, p0, Ljava/util/UUID;->mostSigBits:J

    .line 130
    iput-wide p3, p0, Ljava/util/UUID;->leastSigBits:J

    .line 131
    return-void
.end method

.method private constructor greylist-max-o <init>([B)V
    .registers 12
    .param p1, "data"    # [B

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, 0x0

    .line 106
    .local v0, "msb":J
    const-wide/16 v2, 0x0

    .line 107
    .local v2, "lsb":J
    nop

    .line 108
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    const/16 v5, 0x8

    if-ge v4, v5, :cond_19

    .line 109
    shl-long v5, v0, v5

    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v0, v5, v7

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 110
    .end local v4    # "i":I
    :cond_19
    const/16 v4, 0x8

    .restart local v4    # "i":I
    :goto_1b
    const/16 v6, 0x10

    if-ge v4, v6, :cond_2b

    .line 111
    shl-long v6, v2, v5

    aget-byte v8, p1, v4

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long v2, v6, v8

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 112
    .end local v4    # "i":I
    :cond_2b
    iput-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    .line 113
    iput-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    .line 114
    return-void
.end method

.method private static greylist-max-o digits(JI)Ljava/lang/String;
    .registers 8
    .param p0, "val"    # J
    .param p2, "digits"    # I

    .line 385
    mul-int/lit8 v0, p2, 0x4

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    .line 386
    .local v3, "hi":J
    sub-long v0, v3, v1

    and-long/2addr v0, p0

    or-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api fromString(Ljava/lang/String;)Ljava/util/UUID;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .line 192
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "components":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6c

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_25

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 198
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 199
    .local v1, "mostSigBits":J
    const/16 v3, 0x10

    shl-long/2addr v1, v3

    .line 200
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    or-long/2addr v1, v4

    .line 201
    shl-long/2addr v1, v3

    .line 202
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 204
    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 205
    .local v3, "leastSigBits":J
    const/16 v5, 0x30

    shl-long/2addr v3, v5

    .line 206
    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    or-long/2addr v3, v5

    .line 208
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v5

    .line 194
    .end local v1    # "mostSigBits":J
    .end local v3    # "leastSigBits":J
    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid UUID string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api nameUUIDFromBytes([B)Ljava/util/UUID;
    .registers 5
    .param p0, "name"    # [B

    .line 165
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_30

    .line 168
    .local v0, "md":Ljava/security/MessageDigest;
    nop

    .line 169
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 170
    .local v1, "md5Bytes":[B
    const/4 v2, 0x6

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 171
    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 172
    const/16 v2, 0x8

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 173
    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 174
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v1}, Ljava/util/UUID;-><init>([B)V

    return-object v2

    .line 166
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "md5Bytes":[B
    :catch_30
    move-exception v0

    .line 167
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "MD5 not supported"

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api randomUUID()Ljava/util/UUID;
    .registers 4

    .line 142
    sget-object v0, Ljava/util/UUID$Holder;->numberGenerator:Ljava/security/SecureRandom;

    .line 144
    .local v0, "ng":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 145
    .local v1, "randomBytes":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 146
    const/4 v2, 0x6

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 147
    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 148
    const/16 v2, 0x8

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 149
    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 150
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v1}, Ljava/util/UUID;-><init>([B)V

    return-object v2
.end method


# virtual methods
.method public whitelist core-platform-api test-api clockSequence()I
    .registers 5

    .line 318
    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 322
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v2, 0x3fff000000000000L    # 1.9375

    and-long/2addr v0, v2

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 319
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a time-based UUID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 70
    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api compareTo(Ljava/util/UUID;)I
    .registers 9
    .param p1, "val"    # Ljava/util/UUID;

    .line 438
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v2, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-gez v4, :cond_c

    move v5, v6

    goto :goto_21

    .line 439
    :cond_c
    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    goto :goto_21

    .line 440
    :cond_11
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v2, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1b

    move v5, v6

    goto :goto_21

    .line 441
    :cond_1b
    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    goto :goto_21

    .line 442
    :cond_20
    const/4 v5, 0x0

    .line 438
    :goto_21
    return v5
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 412
    const/4 v0, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/UUID;

    if-eq v1, v2, :cond_c

    goto :goto_21

    .line 414
    :cond_c
    move-object v1, p1

    check-cast v1, Ljava/util/UUID;

    .line 415
    .local v1, "id":Ljava/util/UUID;
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, v1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v4, v1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    .line 413
    .end local v1    # "id":Ljava/util/UUID;
    :cond_21
    :goto_21
    return v0
.end method

.method public whitelist core-platform-api test-api getLeastSignificantBits()J
    .registers 3

    .line 219
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getMostSignificantBits()J
    .registers 3

    .line 228
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 5

    .line 395
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    xor-long/2addr v0, v2

    .line 396
    .local v0, "hilo":J
    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v3, v0

    xor-int/2addr v2, v3

    return v2
.end method

.method public whitelist core-platform-api test-api node()J
    .registers 5

    .line 342
    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 346
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    return-wide v0

    .line 343
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a time-based UUID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api timestamp()J
    .registers 9

    .line 292
    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 296
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide/16 v2, 0xfff

    and-long/2addr v2, v0

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const/16 v4, 0x10

    shr-long v4, v0, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    ushr-long/2addr v0, v6

    or-long/2addr v0, v2

    return-wide v0

    .line 293
    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a time-based UUID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 7

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    .line 377
    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    .line 378
    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v5, 0x30

    shr-long/2addr v2, v5

    .line 379
    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljava/util/UUID;->leastSigBits:J

    .line 380
    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    return-object v0
.end method

.method public whitelist core-platform-api test-api variant()I
    .registers 7

    .line 271
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v2, 0x3e

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x40

    sub-long/2addr v4, v2

    long-to-int v2, v4

    ushr-long v2, v0, v2

    const/16 v4, 0x3f

    shr-long/2addr v0, v4

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist core-platform-api test-api version()I
    .registers 5

    .line 247
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v2, 0xc

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
