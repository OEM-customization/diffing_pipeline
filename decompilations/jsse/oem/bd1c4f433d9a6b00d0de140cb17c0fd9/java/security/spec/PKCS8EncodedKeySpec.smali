.class public Ljava/security/spec/PKCS8EncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "PKCS8EncodedKeySpec.java"


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "encodedKey"    # [B

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 75
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    .prologue
    .line 84
    invoke-super {p0}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string/jumbo v0, "PKCS#8"

    return-object v0
.end method
