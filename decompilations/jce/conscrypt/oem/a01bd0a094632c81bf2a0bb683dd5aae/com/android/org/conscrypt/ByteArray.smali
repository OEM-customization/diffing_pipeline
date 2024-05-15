.class final Lcom/android/org/conscrypt/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private final bytes:[B

.field private final hashCode:I


# direct methods
.method constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    .line 30
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 40
    instance-of v1, p1, Lcom/android/org/conscrypt/ByteArray;

    if-nez v1, :cond_6

    .line 41
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/android/org/conscrypt/ByteArray;

    .line 44
    .local v0, "lhs":Lcom/android/org/conscrypt/ByteArray;
    iget-object v1, p0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    iget-object v2, v0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    return v0
.end method
