.class public Lsun/security/util/Cache$EqualByteArray;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EqualByteArray"
.end annotation


# instance fields
.field private final blacklist b:[B

.field private volatile blacklist hash:I


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "b"    # [B

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    .line 171
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 186
    if-ne p0, p1, :cond_4

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_4
    instance-of v0, p1, Lsun/security/util/Cache$EqualByteArray;

    if-nez v0, :cond_a

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/util/Cache$EqualByteArray;

    .line 193
    .local v0, "other":Lsun/security/util/Cache$EqualByteArray;
    iget-object v1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    iget-object v2, v0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 5

    .line 174
    iget v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    .line 175
    .local v0, "h":I
    if-nez v0, :cond_1c

    .line 176
    iget-object v1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 177
    .end local v0    # "h":I
    .local v1, "h":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    array-length v3, v2

    if-ge v0, v3, :cond_19

    .line 178
    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v1, v2

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 180
    .end local v0    # "i":I
    :cond_19
    iput v1, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    move v0, v1

    .line 182
    .end local v1    # "h":I
    .local v0, "h":I
    :cond_1c
    return v0
.end method
