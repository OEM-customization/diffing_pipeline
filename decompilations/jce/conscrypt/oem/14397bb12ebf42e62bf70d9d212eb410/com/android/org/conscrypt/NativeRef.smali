.class abstract Lcom/android/org/conscrypt/NativeRef;
.super Ljava/lang/Object;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeRef$EC_GROUP;,
        Lcom/android/org/conscrypt/NativeRef$EC_POINT;,
        Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;,
        Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;,
        Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;,
        Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    }
.end annotation


# instance fields
.field final context:J


# direct methods
.method constructor <init>(J)V
    .registers 6
    .param p1, "context"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_12

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context == 0"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_12
    iput-wide p1, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    .line 32
    return-void
.end method


# virtual methods
.method abstract doFree(J)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 36
    instance-of v1, p1, Lcom/android/org/conscrypt/NativeRef;

    if-nez v1, :cond_6

    .line 37
    return v0

    .line 40
    :cond_6
    check-cast p1, Lcom/android/org/conscrypt/NativeRef;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p1, Lcom/android/org/conscrypt/NativeRef;->context:J

    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 52
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/NativeRef;->doFree(J)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_11

    .line 55
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 57
    return-void

    .line 54
    :catchall_11
    move-exception v0

    .line 55
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 54
    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    long-to-int v0, v0

    return v0
.end method
