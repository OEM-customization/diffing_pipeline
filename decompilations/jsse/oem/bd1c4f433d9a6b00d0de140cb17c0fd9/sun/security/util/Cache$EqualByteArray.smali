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
.field private final b:[B

.field private volatile hash:I


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "b"    # [B

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    .line 171
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 186
    if-ne p0, p1, :cond_4

    .line 187
    const/4 v1, 0x1

    return v1

    .line 189
    :cond_4
    instance-of v1, p1, Lsun/security/util/Cache$EqualByteArray;

    if-nez v1, :cond_a

    .line 190
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 192
    check-cast v0, Lsun/security/util/Cache$EqualByteArray;

    .line 193
    .local v0, "other":Lsun/security/util/Cache$EqualByteArray;
    iget-object v1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    iget-object v2, v0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 174
    iget v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    .line 175
    .local v0, "h":I
    if-nez v0, :cond_1d

    .line 176
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    array-length v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 178
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 180
    :cond_1b
    iput v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    .line 182
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method
