.class final Lcom/android/org/conscrypt/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private final blacklist bytes:[B

.field private final blacklist hashCode:I


# direct methods
.method constructor blacklist <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    .line 31
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    instance-of v0, p1, Lcom/android/org/conscrypt/ByteArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 42
    return v1

    .line 44
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/ByteArray;

    .line 45
    .local v0, "lhs":Lcom/android/org/conscrypt/ByteArray;
    iget v2, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    iget v3, v0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    if-eq v2, v3, :cond_10

    .line 46
    return v1

    .line 48
    :cond_10
    iget-object v1, p0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    iget-object v2, v0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    return v0
.end method
