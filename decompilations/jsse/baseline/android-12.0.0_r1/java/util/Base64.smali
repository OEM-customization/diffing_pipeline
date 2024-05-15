.class public Ljava/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Base64$DecInputStream;,
        Ljava/util/Base64$EncOutputStream;,
        Ljava/util/Base64$Decoder;,
        Ljava/util/Base64$Encoder;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getDecoder()Ljava/util/Base64$Decoder;
    .registers 1

    .line 151
    sget-object v0, Ljava/util/Base64$Decoder;->RFC4648:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static whitelist test-api getEncoder()Ljava/util/Base64$Encoder;
    .registers 1

    .line 88
    sget-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    return-object v0
.end method

.method public static whitelist test-api getMimeDecoder()Ljava/util/Base64$Decoder;
    .registers 1

    .line 172
    sget-object v0, Ljava/util/Base64$Decoder;->RFC2045:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static whitelist test-api getMimeEncoder()Ljava/util/Base64$Encoder;
    .registers 1

    .line 109
    sget-object v0, Ljava/util/Base64$Encoder;->RFC2045:Ljava/util/Base64$Encoder;

    return-object v0
.end method

.method public static whitelist test-api getMimeEncoder(I[B)Ljava/util/Base64$Encoder;
    .registers 10
    .param p0, "lineLength"    # I
    .param p1, "lineSeparator"    # [B

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    # getter for: Ljava/util/Base64$Decoder;->fromBase64:[I
    invoke-static {}, Ljava/util/Base64$Decoder;->access$000()[I

    move-result-object v0

    .line 133
    .local v0, "base64":[I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_34

    aget-byte v3, p1, v2

    .line 134
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xff

    aget v4, v0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 133
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 135
    .restart local v3    # "b":B
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal base64 line separator character 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    .line 136
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v3    # "b":B
    :cond_34
    if-gtz p0, :cond_39

    .line 139
    sget-object v1, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    return-object v1

    .line 141
    :cond_39
    new-instance v1, Ljava/util/Base64$Encoder;

    const/4 v3, 0x0

    shr-int/lit8 v2, p0, 0x2

    shl-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Ljava/util/Base64$Encoder;-><init>(Z[BIZLjava/util/Base64$1;)V

    return-object v1
.end method

.method public static whitelist test-api getUrlDecoder()Ljava/util/Base64$Decoder;
    .registers 1

    .line 162
    sget-object v0, Ljava/util/Base64$Decoder;->RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static whitelist test-api getUrlEncoder()Ljava/util/Base64$Encoder;
    .registers 1

    .line 99
    sget-object v0, Ljava/util/Base64$Encoder;->RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

    return-object v0
.end method
