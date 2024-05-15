.class Lcom/android/org/conscrypt/CertBlocklistImpl$ByteString;
.super Ljava/lang/Object;
.source "CertBlocklistImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/CertBlocklistImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteString"
.end annotation


# instance fields
.field final blacklist bytes:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/android/org/conscrypt/CertBlocklistImpl$ByteString;->bytes:[B

    .line 283
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 287
    if-ne p1, p0, :cond_4

    .line 288
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_4
    instance-of v0, p1, Lcom/android/org/conscrypt/CertBlocklistImpl$ByteString;

    if-nez v0, :cond_a

    .line 291
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/CertBlocklistImpl$ByteString;

    .line 295
    .local v0, "other":Lcom/android/org/conscrypt/CertBlocklistImpl$ByteString;
    iget-object v1, p0, Lcom/android/org/conscrypt/CertBlocklistImpl$ByteString;->bytes:[B

    iget-object v2, v0, Lcom/android/org/conscrypt/CertBlocklistImpl$ByteString;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/org/conscrypt/CertBlocklistImpl$ByteString;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
