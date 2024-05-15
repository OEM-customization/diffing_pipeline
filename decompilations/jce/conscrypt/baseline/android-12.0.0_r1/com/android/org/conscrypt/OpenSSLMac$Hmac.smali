.class public Lcom/android/org/conscrypt/OpenSSLMac$Hmac;
.super Lcom/android/org/conscrypt/OpenSSLMac;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hmac"
.end annotation


# instance fields
.field private blacklist ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

.field private final blacklist evp_md:J


# direct methods
.method public constructor blacklist <init>(JI)V
    .registers 5
    .param p1, "evp_md"    # J
    .param p3, "size"    # I

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(ILcom/android/org/conscrypt/OpenSSLMac$1;)V

    .line 159
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->evp_md:J

    .line 160
    return-void
.end method


# virtual methods
.method protected blacklist doFinal()[B
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 186
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Final(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;)[B

    move-result-object v1

    return-object v1
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 173
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 174
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Update(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BII)V

    .line 175
    return-void
.end method

.method protected blacklist resetContext()V
    .registers 5

    .line 164
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_CTX_new()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;-><init>(J)V

    .line 165
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->keyBytes:[B

    if-eqz v1, :cond_14

    .line 166
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->keyBytes:[B

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->evp_md:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Init_ex(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BJ)V

    .line 168
    :cond_14
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 169
    return-void
.end method

.method protected blacklist updateDirect(JI)V
    .registers 5
    .param p1, "ptr"    # J
    .param p3, "len"    # I

    .line 179
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 180
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;JI)V

    .line 181
    return-void
.end method
