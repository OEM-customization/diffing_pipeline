.class public Ljava/security/spec/X509EncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "X509EncodedKeySpec.java"


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "encodedKey"    # [B

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 65
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string/jumbo v0, "X.509"

    return-object v0
.end method
